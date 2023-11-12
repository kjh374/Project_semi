package com.semi.project.user.mapper;

import java.util.List;
import java.util.Map;

import com.semi.project.festival.entity.Festival;
import com.semi.project.user.entity.User;

public interface IUserMapper {

	//아이디 중복 확인
	int idCheck(String userId);
	
	//회원 가입
	void join(User user);
	
	//로그인
	//id를 통해 pw를 조회하는 메서드
	String login(String userId);
	
	//회원정보수정
	void update(User user);
	
	// 회원 정보 얻어오기
	User getInfo(String userId);


	//이메일 중복 확인
	int getEmail(String email);	
	
	//회원탈퇴
	void delete(String userId);

	//좋아요 목록 저장
	void registFtvLike(Map<String, Object> map);
	
	//좋아요 목록 조회
	List<Festival> getLikeList(String userId);








	
}
