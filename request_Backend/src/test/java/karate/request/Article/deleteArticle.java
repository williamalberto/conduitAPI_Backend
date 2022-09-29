package karate.request.Article;

import com.intuit.karate.junit5.Karate;

public class deleteArticle {
    @Karate.Test
    Karate testSample(){return Karate.run("classpath:Karate/request/Article/DeleteArticle.feature").relativeTo(getClass());
    }
}