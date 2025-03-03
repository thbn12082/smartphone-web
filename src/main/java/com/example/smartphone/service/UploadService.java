package com.example.smartphone.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {
    private final ServletContext servletContext;

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    // targetFolder ở đây ta có thể truyền vào là avatar hoặc product => tạo sản
    // phẩm hoặc thêm ảnh đại diện
    public String handleSaveUploadFile(MultipartFile file, String targetFolder) throws IOException {
        if (file.isEmpty()) {
            return "";
        }
        byte[] bytes = file.getBytes();
        String rootPath = this.servletContext.getRealPath("/resources/images");

        File dir = new File(rootPath + File.separator + targetFolder);
        if (!dir.exists())
            dir.mkdirs();

        // Create the file on server
        File serverFile = new File(dir.getAbsolutePath() + File.separator +
                +System.currentTimeMillis() + "-" + file.getOriginalFilename());

        BufferedOutputStream stream = new BufferedOutputStream(
                new FileOutputStream(serverFile));
        stream.write(bytes);
        stream.close();
        return System.currentTimeMillis() + "-" + file.getOriginalFilename();
    }

}
