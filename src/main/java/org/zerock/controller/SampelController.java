package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;
import org.zerock.domain.Ticket;

import lombok.extern.log4j.Log4j;

@RestController	// 모든 method의 return 값이 json or xml 등으로 리턴됨. view로 이동하지않음.
@RequestMapping("/sample")
@Log4j
public class SampelController {
	@GetMapping(value = "/getSample")
	public SampleVO getSample() {
		return new SampleVO(112, "스타", "로드");
	}
	@GetMapping("/getList")
	public List<SampleVO> getList(){
		return IntStream.range(1,10).mapToObj(i->new SampleVO(i,i+" First",i+" Last")).collect(Collectors.toList());
	}
	
	@GetMapping(value = "/getMap")
	public Map<String, SampleVO> getMap() {
		Map<String, SampleVO> map = new HashMap<>();
		map.put("First", new SampleVO(111, "그루트", "주니어"));
		return map;
	}

	@GetMapping(value = "/check") // , params = { "height", "weight" } 주소 옆에 이건 생략가능. 오타만 안나면
	public ResponseEntity<SampleVO> check(Double height, Double weight) {
		SampleVO vo = new SampleVO(0, "" + height, "" + weight);
		ResponseEntity<SampleVO> result = null;
		if (height < 150) {
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		} else {
			result = ResponseEntity.status(HttpStatus.OK).body(vo);
		}
		return result;
	}

	@GetMapping("/product/{cat}/{pid}")
	public String[] getPath(@PathVariable("cat") String cat, @PathVariable("pid") Integer pid) {
//		@PathVariable는 생략XX
		
		
		return new String[] { "category: " + cat, "productid: " + pid };
		
	}
	
	@PostMapping("/ticket")
	// @RequestBody는 client에서 전달된 데이터를 DTO에 저장할 떄 필요.
	public Ticket convert(@RequestBody Ticket ticket) {
		return ticket;
	}

}
