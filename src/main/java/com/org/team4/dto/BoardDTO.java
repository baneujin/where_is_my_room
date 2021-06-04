package com.org.team4.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class BoardDTO {
	private long id;
	private String title;
	private String content;
	private double latitude;
	private double longitude;
	private String roomType;
	private String contractType;
	private int rentalFee;
	private String address;
	private String detailAddress;
	private String writeDate;
	private int deleted;
	private long writerId;
}
