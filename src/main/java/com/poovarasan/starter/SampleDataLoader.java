package com.poovarasan.starter;

import com.poovarasan.models.Apps;
import com.poovarasan.models.Role;
import com.poovarasan.models.User;
import com.poovarasan.repository.AppsRepository;
import com.poovarasan.service.RoleService;
import com.poovarasan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.HashSet;

/**
 * Created by poovarasanv on 17/4/17.
 * Project : mobiledashboard
 */
@Component
public class SampleDataLoader implements ApplicationRunner {

    private final UserService userService;
    private final RoleService roleService;

    @Autowired
    public SampleDataLoader(UserService userService, RoleService roleService) {
        this.userService = userService;
        this.roleService = roleService;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {

        String roles[] = {"ADMIN", "USER", "REPORT", "API"};
        for (String r : roles) {
            Role role = new Role();
            role.setName(r);
            roleService.save(role);
        }

        String users[] = {"poosan", "poosan1", "poosan2", "poosan3"};
        for (String u : users) {
            User user = new User();
            user.setUsername(u);
            user.setFirstName(u);
            user.setPassword(u);

            Apps apps = new Apps();
            apps.setName("Integration App : " + u);
            apps.setDescription("Test Integration App" + u);
            apps.setCreatedBy(user);

            user.setApps(new HashSet<Apps>() {{
                add(apps);
            }});

            userService.save(user);
        }

       // java.net.URL classUrl = this.getClass().getResource("com.sun.mail.util.TraceInputStream");
        //System.out.println("Java Mail :" + classUrl.getFile());
    }
}
