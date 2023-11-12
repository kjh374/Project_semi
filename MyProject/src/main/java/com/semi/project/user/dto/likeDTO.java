package com.semi.project.user.dto;

import com.semi.project.user.entity.FtvLike;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class likeDTO {
	
	private String userId;
	private int ftvNum;
	private int likeNum;

	public FtvLike toEntity(FtvLike like) {
		return FtvLike.builder()
					.userId(like.getUserId())
					.ftvNum(like.getFtvNum())
					.likeNum(like.getLikeNum())
					.build();
	}
	
}
