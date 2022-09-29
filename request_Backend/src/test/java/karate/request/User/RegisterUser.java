package karate.request.User;

import com.intuit.karate.junit5.Karate;

public class RegisterUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:Karate/request/UserAndAuthentication/Register/register.feature").relativeTo(getClass());
    }

}
