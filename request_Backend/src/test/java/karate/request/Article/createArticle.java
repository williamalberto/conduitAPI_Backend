package karate.request.Article;

import com.intuit.karate.junit5.Karate;

public class createArticle {
    @Karate.Test
    Karate testSample(){return Karate.run("classpath:Karate/request/Article/createArticle.feature").relativeTo(getClass());
    }
}