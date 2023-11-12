package com.semi.project.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyEmitterReturnValueHandler;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.festival.entity.Festival;
import com.semi.project.user.dto.RequestDTO;
import com.semi.project.user.dto.ResponseDTO;
import com.semi.project.user.dto.likeDTO;
import com.semi.project.user.entity.User;
import com.semi.project.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {


	private final IUserMapper mapper;
	private final BCryptPasswordEncoder encoder;
	
	public void join(RequestDTO dto) {
		
		mapper.join(User.builder()
				.userId(dto.getUserId())
				.userPw(encoder.encode(dto.getUserPw()))
				.email(dto.getEmail()+ "@" + dto.getEmail1())
				.name(dto.getName())
				.build());
	}

	public List<FtvResponseDTO> getLikeList(String userId) {
		List<Festival> list = mapper.getLikeList(userId);
		List<FtvResponseDTO> dtoList = new ArrayList<FtvResponseDTO>();
		for(Festival f : list) {
			dtoList.add(new FtvResponseDTO(f));
		}
		return dtoList;
	}

	public List<ReplyResponseDTO> getReplyList(Object attribute) {
		return null;
	}

	// 아이디 중복 확인
	public int idCheck(String userId) {
		return mapper.idCheck(userId);
	}

	
	public String login(String userId, String userPw) {
		String dbPw = mapper.login(userId);
		if(dbPw != null) {
			if(encoder.matches(userPw, dbPw)) {
				return userId;
			}
		}
		return null;
	}
	
	public ResponseDTO getInfo(String userId) {
		User user = mapper.getInfo(userId);
		return ResponseDTO.dto(user);	
	}

	public void update(RequestDTO dto) {

		mapper.update(User.builder()
				.userId(dto.getUserId())
				.userPw(encoder.encode(dto.getUserPw()))
				.build());
	}
	//수정 데이터 
	

	public void delete(String userId) {
		mapper.delete(userId);
	}

	public int getEmail(String email) {
		return mapper.getEmail(email);
	}

	public void registFtvLike(likeDTO dto) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", dto.getUserId());
		map.put("ftvNum", dto.getFtvNum());
		mapper.registFtvLike(map);		
	}
}












