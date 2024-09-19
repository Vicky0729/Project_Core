package Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
@RequiredArgsConstructor


public class BoardDTO {

	private String b_title; // 게시물 제목	
	@NonNull private String user_id; // 게시글 작성자	
	@NonNull private String file_rname; // 게시물 사진	
	@NonNull private String b_content; // 게시물 텍스트	
	@NonNull private String created_at; // 등록 날짜
	private int b_likes; // 게시물 좋아요수	
	private int b_funs; // 게시물 웃겨요수
}
