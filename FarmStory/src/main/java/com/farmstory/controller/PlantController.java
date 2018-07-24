package com.farmstory.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

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
		
		
		return "plant/plant-list";
	}

	
	@GetMapping(value = "/plant_write.action")
	public String showWrite() {
		
		
		return "plant/plant-write";
	}
	
	@PostMapping(value = "/plant_write.action")
	public String writePlantInfo(Plant plant, MultipartHttpServletRequest mtfRequest){
		
		PlantImg imgFile = null;
		// 브라우저에서 보낸 정보중에서 파일데이터를 받아온다.
		List<MultipartFile> fileList = mtfRequest.getFiles("plantImg");
		ArrayList<PlantImg> imgFiles = new ArrayList<>();
		int imageIdx = 0;
		// 브라우저에서 보낸 정보 중에서 파일 데이터를 분리하여 저장한다. 
        for (MultipartFile mf : fileList) {
        	if(!mf.isEmpty() && mf.getOriginalFilename().length() != 0) {
        		PlantImg plantImg = new PlantImg();
        		imageIdx = imageIdx + 1;
        		String path = mtfRequest.getServletContext().getRealPath("/resources/upload-image/plant-info");
        		String originFileName = mf.getOriginalFilename(); // 원본 파일 이름을 받아온다.
        		String uniqueFileName = System.currentTimeMillis() + originFileName; // 수정된 파일 이름을 저장한다.
        		plantImg.setPliImg(uniqueFileName);
        		plantImg.setImgIdx(imageIdx);
        		
        		long fileSize = mf.getSize(); // 파일 사이즈 정보를 받아온다.
        		System.out.println("originFileName : " + originFileName);
        		System.out.println("fileSize : " + fileSize);
        		
        		try {
        			mf.transferTo(new File(path, uniqueFileName));
        			imgFile = new PlantImg();
        			imgFile.setPliImg(uniqueFileName);
        		} catch (Exception e) {
        			e.printStackTrace();
        		}
        		imgFiles.add(plantImg);
        	}

        }
        // 분리하여 저장한 파일들의 이름을 받아 plant vo객체에 저장한다. 
        plant.setAttachments(imgFiles);
        
        
        plantService.writePlantInfoWithImages(plant);

        return "redirect:/plant_list.action";
	}
	
	
	@GetMapping(value = "/plant_detail.action")
	public String showPlantDetail(Model model) {
		
		return "plant/plant-detail";
	}
}
