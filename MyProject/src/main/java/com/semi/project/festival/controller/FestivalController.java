package com.semi.project.festival.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.service.FestivalService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/festival")
@RequiredArgsConstructor
@Slf4j
public class FestivalController {

	private final FestivalService service;

	//축제지도 화면 이동 요청
	@GetMapping("/")
	public void viewFestival() {

	}

	//시즌별 축제조회(비동기)
	@GetMapping("/ftvList/{season}")
	@ResponseBody
	public List<FtvResponseDTO> getFtvList(@PathVariable String season){
		log.info("/festival/ftvList 요청: GET!  {}", season);
		return service.getFestivalBySeason(season);
	}
	//행정구역 요청(비동기)
	@PostMapping("/ftvList")
	@ResponseBody
	public List<FtvResponseDTO> getArea(@RequestBody String name) {
		log.info("/festival/ftvList 요청: GET!  {}", name);
		return service.getFestivalByArea(name);
	}
	
		
	// 검색창에 축제명 입력(비동기)
	@PostMapping("/search")
	@ResponseBody
	public List<FtvResponseDTO> getFtvNameList(@RequestBody String filterValue){
		log.info("/festival/search 요청: GET! {}", filterValue);
		return service.getFestivalByName(filterValue);
	}

	// 실시간 인기축제 요청(비동기)
	@GetMapping("/populer")
	@ResponseBody
	public List<FtvResponseDTO> getftvNameList2(String ftvname){
		log.info("/festival/ftvList2 요청! GET!", ftvname);
		return service.getFestivalByName(ftvname);
	}

//	// 축제 번호 조회
//	@GetMapping("/ftvNum")
//	@ResponseBody
//	public int getFtvNum(@RequestBody )

}












