package com.lgdx.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	// primary key
	private Long idx;			// jpa에서는 거의 대부분 int 대신 long을 사용, 주의할 점은 Long(기본X)이다~
		
	private String title;
	
	@Column(length = 2000)		// 길이 설정
	private String contents;
	
	@Column(updatable = false)	// writer는 수정하지 않겠다	
	private String writer;
	
	@Column(insertable = false, updatable = false, columnDefinition = "int default 0")
	private Long count;			// 자바와 sql이 소통할 때는 Long을 써야하지만, mysql 문법에서는 int를 써야함
	
	@Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
	private Date indate;

}
