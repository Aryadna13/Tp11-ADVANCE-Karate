package examples.clockify;

import com.intuit.karate.junit5.Karate;

class clockifyRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("clockify").relativeTo(getClass());
    }
}
