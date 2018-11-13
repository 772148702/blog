package com.lzy.po.upload.Impl;

import org.springframework.stereotype.Service;

/**
 * @author langhsu
 *
 */
@Service
public class FileRepoImpl extends AbstractFileRepo {
    @Override
    public String getRoot() {
        return appContext.getRoot();
    }
}