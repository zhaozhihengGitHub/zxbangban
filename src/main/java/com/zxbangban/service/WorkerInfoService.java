package com.zxbangban.service;

import com.zxbangban.entity.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/11.
 */
@Service
public interface WorkerInfoService {

    int newWorkerInfo(WorkerInfo workerInfo);

    List<WorkerInfo> showAllWorkersByJobId(Integer jobId);

    List<WorkerInfo> showWorkersByJobId(WorkerDetail workerDetail);

    List<WorkerInfo> showWorkers(WorkerDetail workerDetail);

    List<WorkerInfo> queryByTelphone(String telphone);

    WorkerInfo queryWorkerByWorkerId(long workerid);

    List<WorkerInfo> queryNew();

    List<Worker> queryAll(@Param("pageBean")PageBean pageBean);

    List<Worker> queryByJobId(Integer jobId);

    List<Worker> queryByJobName(String jobName,@Param("pageBean") PageBean pageBean);

    int countWorkers();

    int countWorkersByJoBId(Integer jobId);

    int countWorkersByJobName(String jobName);

    String queryTelByWorkerId(long workerid);

    WorkerInfo queryDetailByWorkerId(long workerid);

    int updateIsShow(long workerid);

    int updateIsNotShow(long workerid);

    int editName(long workerid,String name);

    int editAuth(long workerid,boolean auth);

    int editCert(long workerid,boolean cert);

    int editPR(long workerid, boolean pr);

    int editLocation(long workerid,String location);

    int editAddress(long workerid,String address);

    void editheadimg(long workerid, String headimgurl);

    boolean queryPRByWorkerId(long workerid);

    int updateOARating(long workerid);

    int saveDes(long id,String projectDes);

    int editPorjectImg(long id,String projectImg);

    String queryProjectImgByWorkerId(long workerid);

    int changeStateTrue(long workerId);

    int changeStateFalse(long workerId);

    int deleteWorkerInfo(long workerId);

    double queryOARatingByWorkerId(long workerId);

   List<WorkerInfo> queryByTel(String tel);

    List<WorkerInfo> queryByWorkerName(String workerName);

    int updateWorkerState(boolean state,long workerId);

    int updateProjectImg(long workerId,String projectImg);

    List<Province> queryProvinceAll();

    List<City> queryCityByProvinceCode(String code);

    List<Town> queryTownByCityCode(String code);

    int updateWorkerInfo(WorkerInfo workerInfo );

    int updateTel(long workerId,String tel);
}
