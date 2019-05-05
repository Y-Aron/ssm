package org.aron.ssm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@Slf4j
@Controller
@RequestMapping("port")
public class WebController {

    @GetMapping("filePage")
    public String filePage() {
        return "file";
    }

    @PostMapping("upload")
    public void upload(@RequestParam MultipartFile file) throws IOException {
        log.info("{}", file);
        log.info("{}", file.getName());
        log.info("{}", file.getOriginalFilename());
//        String sha1Hex = DigestUtils.sha1Hex(file.getInputStream());
//        log.info("{}", sha1Hex);
        String hex = DigestUtils.md5DigestAsHex(file.getInputStream());



        String filepath = "G:\\Code\\JavaProject\\ssm\\src\\main\\resources\\static\\upload\\" + file.getOriginalFilename();
        log.info("{}", filepath);
        file.transferTo(new File(filepath));

//        return null;
    }
}
