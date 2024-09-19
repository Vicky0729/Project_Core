package Model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class RecipeDTO {

   //레시피 이름
   private String recipeName;
   //레시피 내용
   private String recipeCookingGuide;
   //레시피 이미지 
   private String recipeImg1;
   private String recipeImg2;
   private String recipeImg3;
   private String recipeImg4;
   private String recipeImg5;
   
   
   public RecipeDTO(String recipeName, String recipeImg1) {
      
      this.recipeName = recipeName;
      this.recipeImg1 = recipeImg1;
   }
   
   
   
   
   
   
   
   
   
   
   
}
