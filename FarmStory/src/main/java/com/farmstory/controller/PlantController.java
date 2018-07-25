package com.farmstory.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.farmstory.common.Util;
import com.farmstory.service.PlantService;
import com.farmstory.vo.Plant;
import com.farmstory.vo.PlantImg;


@Controller
public class PlantController {

	@Autowired
	@Qualifier("plantService")
	private PlantService plantService;
	
	@GetMapping(value = "/plant_list.action")
	public String showPlantList(Model model) {
		
		List<Plant> plantInfos = plantService.findPlantInfosWithThumnailImages();
		
		model.addAttribute("plantInfos", plantInfos);
		
		return "plant/plant-list";
	}

	
	@GetMapping(value = "/plant_write.action")
	public String showWrite() {
		
		return "plant/plant-write";
	}
	
	@PostMapping(value = "/plant_write.action")
	public String writePlantInfo(Plant plant, MultipartHttpServletRequest mtfRequest){
		
		PlantImg imgFile = null;
		// 브라우저에서 보낸 데이터 중에서 파일데이터를 받아온다.
		List<MultipartFile> fileList = mtfRequest.getFiles("plantImg");
		ArrayList<PlantImg> imgFiles = new ArrayList<>();
		int imageIdx = 0;
		// 브라우저에서 보낸 데이터 중에서 파일 데이터를 분리하여 저장한다. 
        for (MultipartFile mf : fileList) {
        	if(!mf.isEmpty() && mf.getOriginalFilename().length() != 0) {
        		PlantImg plantImg = new PlantImg();
        		imageIdx = imageIdx + 1;
        		
        		// 파일 업로드할 경로를 지정한다.
        		String fileUploadPath = mtfRequest.getServletContext().getRealPath("/resources/upload-image/plant-info");
        		String originFileName = mf.getOriginalFilename(); // 원본 파일 이름을 받아온다.
        		String uniqueFileName = System.currentTimeMillis() + originFileName; // 수정된 파일 이름을 저장한다.
        		
        		// 브라우저에서 보내진 파일을 지정된 경로에 저장한다.
        		if (imageIdx == 1) { // imageIdx가 1이면 미리보기 이미지로 저장한다.
        			// 저장할 미리보기 이미지의 이름을 PlantImg vo에 저장한다. 
        			plantImg.setPliImg("thumb_" + uniqueFileName);
        			plantImg.setImgIdx(imageIdx);
        			try {
        				// 파일 업로드 경로에 원본파일을 수정된 파일이름으로 저장한다.
        				mf.transferTo(new File(fileUploadPath, uniqueFileName));
        				// 지정된 사이즈의 미리보기 이미지로 변환하여 파일 업로드 경로에 저장한다.
						Util.makeThumbnail(fileUploadPath, uniqueFileName, 570, 390);
						// 파일 업로드 경로에 변경된 이미지의 이름의 이름을 PlantImg vo에 저장한다.
						imgFile = new PlantImg();
	        			imgFile.setPliImg("thumb_" + uniqueFileName);
					} catch (Exception e) {e.printStackTrace();}
        		} else {
        			// 저장할 상세 페이지 이미지의 이름을 PlantImg vo에 저장한다.
	        		plantImg.setPliImg("resize_" + uniqueFileName);
	        		plantImg.setImgIdx(imageIdx);
        		try {
        			// 파일 업로드 경로에 원본파일을 수정된 파일이름으로 저장한다.
        			mf.transferTo(new File(fileUploadPath, uniqueFileName));
        			// 지정된 사이즈의 사이즈 조정된 이미지로 변환하여 파일 업로드 경로에 저장한다.
        			Util.imageResize(fileUploadPath, uniqueFileName, 1170, 800);
        			// 파일 업로드 경로에 변경된 이미지의 이름의 이름을 PlantImg vo에 저장한다.
        			imgFile = new PlantImg();
        			imgFile.setPliImg("resize_" + uniqueFileName);
        		} catch (Exception e) {e.printStackTrace();}
        		
        		}
        		
        		// 테스트를 위한 업로드된 파일 정보를 받아온다.
        		long fileSize = mf.getSize(); // 파일 사이즈 정보를 받아온다.
        		System.out.println("originFileName : " + originFileName);
        		System.out.println("fileSize : " + fileSize);
        		
        		// 업로드된 여러개의 이미지 파일을 List<PlantImg>형식으로 객체에 저장한다.
        		imgFiles.add(plantImg);
        	}

        }
        // 분리하여 저장한 파일들의 이름을 받아 plant vo객체에 저장한다. 
        plant.setAttachments(imgFiles);
        
        // plant vo에 저장된 데이터를 DB에 저장한다.
        plantService.writePlantInfoWithImages(plant);

        return "redirect:/plant_list.action";
	}
	
	
	@GetMapping(value = "/plant_detail.action")
	public String showPlantDetail(@RequestParam(value = "plaNo") int plaNo, Model model, Plant plant) {
		
		// 상세 페이지에 선택한 식물 정보를 DB에서 조회하여 Plant vo객체에 저장한다.
		plant = plantService.findPlantInfoByPlaNo(plaNo);
		// 상세 페이지에 식물 정보 사진을 DB에서 조회하여 PlantImg vo객체에 저장한다.
		List<PlantImg> plantInfoImages = plantService.findImagesPlantInfoByPlaNo(plaNo);
		// 다른 식물 정보의 데이터들을 조회하여 객체에 저장한다.
		List<Plant> plantInfos = plantService.findPlantInfosWithThumnailImages();
		
		model.addAttribute("plant", plant);
		model.addAttribute("plantInfosImages", plantInfoImages);
		model.addAttribute("plantInfos", plantInfos);
		
		return "plant/plant-detail";
	}
}
