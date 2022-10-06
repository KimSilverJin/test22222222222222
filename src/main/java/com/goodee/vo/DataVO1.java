package com.goodee.vo;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import javax.validation.constraints.Size;

// 유효성 검사를 위한 Bean Annotation 설정
/* - Validation 어노테이션은 상당히 다양한 종류가 있으며 JSR-303 스펙에서도 우리가 사용할 수 있는 여러가지 어노테이션들을
 *   제공하고 있다.
 * - 해당 어노테이션들은 보통 필드에 쓰이는 경우가 많으며 제약조건을 어노테이션에 지정하여 유효성 검사를 Bean 객체에서
 *   할 수 있도록 한다.
 * */
public class DataVO1 {
	
	// 글자 길이가 2 이상 10 이하
	// @Size(min=2, max=10, message = "2나 10 사이의 값을 입력해라")
	@Size(max=10, message = "글자는 10이하")
	@Size(min=2, message = "글자는 2이상")
	@NotBlank
	private String data1;
	
	// 숫자가 100 까지, 그 이상 초과하면 안됨
	@Max(100)
	private int data2;


	public String getData1() {
		return data1;
	}


	public void setData1(String data1) {
		this.data1 = data1;
	}


	public int getData2() {
		return data2;
	}


	public void setData2(int data2) {
		this.data2 = data2;
	}
	
	
}
