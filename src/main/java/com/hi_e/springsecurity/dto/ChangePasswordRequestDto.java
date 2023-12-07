package com.hi_e.springsecurity.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 비밀번호 변경 요청을 위한 DTO (Data Transfer Object) 클래스입니다.
 */
@Getter 
@Setter 
@AllArgsConstructor 
@NoArgsConstructor
public class ChangePasswordRequestDto {
    private String exPassword; // 이전 비밀번호
    private String newPassword; // 새 비밀번호
    private String newPasswordChk; // 새 비밀번호 확인
}