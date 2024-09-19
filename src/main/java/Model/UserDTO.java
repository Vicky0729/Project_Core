package Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
public class UserDTO {
	
	   // 회원 아이디 
    private String userId;

    // 회원 비밀번호 
    private String userPw;

    // 회원 이름 
    private String userName;

    // 회원 이메일 
    private String userEmail;


    // 회원 프로필사진 
    private String userProfileImg;

}
