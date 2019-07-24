SET NAMES UTF8;
DROP DATABASE IF EXISTS mi;
CREATE DATABASE mi CHARSET=UTF8;
USE mi;

/****商城分类****/
CREATE TABLE mi_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(24) NOT NULL DEFAULT ''
)DEFAULT CHARSET=UTF8;
INSERT INTO mi_family VALUES(NULL,"手机 电话卡");
INSERT INTO mi_family VALUES(NULL,"电视 盒子");
INSERT INTO mi_family VALUES(NULL,"笔记本");
INSERT INTO mi_family VALUES(NULL,"智能 家电");
INSERT INTO mi_family VALUES(NULL,"健康 家居");
INSERT INTO mi_family VALUES(NULL,"出行 儿童");
INSERT INTO mi_family VALUES(NULL,"路由器 手机配件");
INSERT INTO mi_family VALUES(NULL,"移动电源 插线板");
INSERT INTO mi_family VALUES(NULL,"耳机 音箱 ");
INSERT INTO mi_family VALUES(NULL," 生活  米兔");

/**** 详细分类****/
CREATE TABLE mi_product(
    apid INT PRIMARY KEY AUTO_INCREMENT,        #种类编号
    fid INT,                                    #家族编号
    name VARCHAR(24) NOT NULL DEFAULT '' ,      #手机名称
    FOREIGN KEY (fid) REFERENCES mi_family (fid)
);
/*手机*/
INSERT INTO mi_product VALUES(NULL,1,'小米Note 3');
INSERT INTO mi_product VALUES(NULL,1,'小米Mix 2');
INSERT INTO mi_product VALUES(NULL,1,'小米6');
INSERT INTO mi_product VALUES(NULL,1,'小米5X');
INSERT INTO mi_product VALUES(NULL,1,'小米Max 2');
INSERT INTO mi_product VALUES(NULL,1,'红米5 Plus');
INSERT INTO mi_product VALUES(NULL,1,'红米5');
INSERT INTO mi_product VALUES(NULL,1,'红米5A');
INSERT INTO mi_product VALUES(NULL,1,'红米Note 5A');
INSERT INTO mi_product VALUES(NULL,1,'红米Note 4X');
INSERT INTO mi_product VALUES(NULL,1,'红米4X');
INSERT INTO mi_product VALUES(NULL,1,'红米4A');
INSERT INTO mi_product VALUES(NULL,1,'移动4G+专区');
INSERT INTO mi_product VALUES(NULL,1,'对比手机');
INSERT INTO mi_product VALUES(NULL,1,'米粉卡 日租卡');
INSERT INTO mi_product VALUES(NULL,1,'小米移动 电话卡');
INSERT INTO mi_product VALUES(NULL,1,'手机上门维修服务');
/**** 2 电视 ****/
INSERT INTO mi_product VALUES(NULL,2,'小米电视4C 43英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4 49英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 55英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米盒子3s');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4C 55英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4 55英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 65英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米盒子3c');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 50英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4 65英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米电视3s 65英寸 曲面');
INSERT INTO mi_product VALUES(NULL,2,'安装服务');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4C 55英寸体育版');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 32英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米盒子4');
INSERT INTO mi_product VALUES(NULL,2,'电视盒子配件');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 32英寸体育版');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 43英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米盒子4c');
INSERT INTO mi_product VALUES(NULL,2,'小米影视会员');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 43英寸体育版');
INSERT INTO mi_product VALUES(NULL,2,'小米电视4A 49英寸');
INSERT INTO mi_product VALUES(NULL,2,'小米盒子3 增强版');
INSERT INTO mi_product VALUES(NULL,2,'小米儿童会员');
/**** 3 笔记本 ****/
INSERT INTO mi_product VALUES(NULL,3,'笔记本Air 12.5" ');
INSERT INTO mi_product VALUES(NULL,3,'笔记本Air 13.3" 独显');
INSERT INTO mi_product VALUES(NULL,3,'笔记本Air 13.3" 集显');
INSERT INTO mi_product VALUES(NULL,3,'笔记本Pro 15.6"');
INSERT INTO mi_product VALUES(NULL,3,'USB-C电源适配器');
INSERT INTO mi_product VALUES(NULL,3,'USB-C转接器');
INSERT INTO mi_product VALUES(NULL,3,'VGA 千兆网口转接器');
INSERT INTO mi_product VALUES(NULL,3,'小米笔记本内胆包');
INSERT INTO mi_product VALUES(NULL,3,'悦米机械键盘');
INSERT INTO mi_product VALUES(NULL,3,'小米便携鼠标');
INSERT INTO mi_product VALUES(NULL,3,'小米无线鼠标');
INSERT INTO mi_product VALUES(NULL,3,'鼠标垫');
INSERT INTO mi_product VALUES(NULL,3,'DisplayPort转接器');	
/**** 4 智能 家电****/
INSERT INTO mi_product VALUES(NULL,4,'空气净化器2');
INSERT INTO mi_product VALUES(NULL,4,'空气净化器Pro');
INSERT INTO mi_product VALUES(NULL,4,'净化器2S');
INSERT INTO mi_product VALUES(NULL,4,'净化器MAX');
INSERT INTO mi_product VALUES(NULL,4,'车载空气净化器');
INSERT INTO mi_product VALUES(NULL,4,'空净滤芯');
INSERT INTO mi_product VALUES(NULL,4,'净水器(厨下式)');
INSERT INTO mi_product VALUES(NULL,4,'净水器滤芯');
INSERT INTO mi_product VALUES(NULL,4,'米家恒温电水壶');
INSERT INTO mi_product VALUES(NULL,4,'米家电水壶');
INSERT INTO mi_product VALUES(NULL,4,'PM2.5检测仪');
INSERT INTO mi_product VALUES(NULL,4,'水质TDS检测笔');
INSERT INTO mi_product VALUES(NULL,4,'扫地机器人');
INSERT INTO mi_product VALUES(NULL,4,'扫地机附件');
INSERT INTO mi_product VALUES(NULL,4,'压力IH电饭煲');
INSERT INTO mi_product VALUES(NULL,4,'IH电饭煲3L');
INSERT INTO mi_product VALUES(NULL,4,'IH电饭煲4L');
INSERT INTO mi_product VALUES(NULL,4,'激光投影电视');
/**** 5 健康 家居****/
INSERT INTO mi_product VALUES(NULL,5,'小米手环2');
INSERT INTO mi_product VALUES(NULL,5,'手环腕带');
INSERT INTO mi_product VALUES(NULL,5,'手环充电器');
INSERT INTO mi_product VALUES(NULL,5,'运动手表');
INSERT INTO mi_product VALUES(NULL,5,'小米体脂称');
INSERT INTO mi_product VALUES(NULL,5,'小米体重秤');
INSERT INTO mi_product VALUES(NULL,5,'米家体温计');
INSERT INTO mi_product VALUES(NULL,5,'米家血压计');
INSERT INTO mi_product VALUES(NULL,5,'米家电动牙刷');
INSERT INTO mi_product VALUES(NULL,5,'智能家庭组合');
INSERT INTO mi_product VALUES(NULL,5,'米家智能插座');
INSERT INTO mi_product VALUES(NULL,5,'手电筒');
INSERT INTO mi_product VALUES(NULL,5,'米家LED智能台灯');
INSERT INTO mi_product VALUES(NULL,5,'米家飞利浦台灯');
INSERT INTO mi_product VALUES(NULL,5,'米家感应夜灯');
INSERT INTO mi_product VALUES(NULL,5,'床头灯');
INSERT INTO mi_product VALUES(NULL,5,'吸顶灯');
INSERT INTO mi_product VALUES(NULL,5,'智能灯泡');
INSERT INTO mi_product VALUES(NULL,5,'米家小白摄像机');
INSERT INTO mi_product VALUES(NULL,5,'米家摄像机云台版');
INSERT INTO mi_product VALUES(NULL,5,'小方摄像机');
INSERT INTO mi_product VALUES(NULL,5,'大方摄像机');
/**** 6 出行 儿童****/
INSERT INTO mi_product VALUES(NULL,6,'九号平衡车');
INSERT INTO mi_product VALUES(NULL,6,'九号平衡车Plus');
INSERT INTO mi_product VALUES(NULL,6,'米家电动滑板车');
INSERT INTO mi_product VALUES(NULL,6,'点动力折叠自行车');
INSERT INTO mi_product VALUES(NULL,6,'智能后视镜');
INSERT INTO mi_product VALUES(NULL,6,'米兔儿童手表2');
INSERT INTO mi_product VALUES(NULL,6,'米兔智能积木');
INSERT INTO mi_product VALUES(NULL,6,'米兔故事机mini');
INSERT INTO mi_product VALUES(NULL,6,'积木机器人');
INSERT INTO mi_product VALUES(NULL,6,'米兔定位电话');
INSERT INTO mi_product VALUES(NULL,6,'小米无人机');
INSERT INTO mi_product VALUES(NULL,6,'米家对讲机');
INSERT INTO mi_product VALUES(NULL,6,'米家全景相机');
INSERT INTO mi_product VALUES(NULL,6,'小蚁微单相机');
/****7 路由器 手机配件详细分类****/
INSERT INTO mi_product VALUES(NULL,7,'小米路由器3' );
INSERT INTO mi_product VALUES(NULL,7,'小米路由器3C' );
INSERT INTO mi_product VALUES(NULL,7,'小米路由器3G' );
INSERT INTO mi_product VALUES(NULL,7,'小米路由器A' );
INSERT INTO mi_product VALUES(NULL,7,'小米路由器Pro' );
INSERT INTO mi_product VALUES(NULL,7,'小米路由器HD' );
INSERT INTO mi_product VALUES(NULL,7,'小米VR眼镜' );
INSERT INTO mi_product VALUES(NULL,7,'WiFi放大器2' );
INSERT INTO mi_product VALUES(NULL,7,' WiFi放大器Pro' );
INSERT INTO mi_product VALUES(NULL,7,' WiFi 电力猫' );
INSERT INTO mi_product VALUES(NULL,7,'随身WiFi ' );
INSERT INTO mi_product VALUES(NULL,7,'千兆网线' );
INSERT INTO mi_product VALUES(NULL,7,'手机保护套' );
INSERT INTO mi_product VALUES(NULL,7,'手机贴膜' );
INSERT INTO mi_product VALUES(NULL,7,'手机支架' );
INSERT INTO mi_product VALUES(NULL,7,'数据线' );
INSERT INTO mi_product VALUES(NULL,7,'存储卡' );
/**** 8 移动电源 插线板详细分类****/
INSERT INTO mi_product VALUES(NULL,8,'新小米移动电源2' );
INSERT INTO mi_product VALUES(NULL,8,'新小米移动电源2C' );
INSERT INTO mi_product VALUES(NULL,8,'小米移动电源2' );
INSERT INTO mi_product VALUES(NULL,8,'小米随身手电筒' );
INSERT INTO mi_product VALUES(NULL,8,'移动电源保护套' ); 
INSERT INTO mi_product VALUES(NULL,8,'彩虹电池7号' ); 
INSERT INTO mi_product VALUES(NULL,8,'彩虹5号电池(10粒装 )' );
INSERT INTO mi_product VALUES(NULL,8,'USB充电器' );
INSERT INTO mi_product VALUES(NULL,8,'小米车载充电器' );
INSERT INTO mi_product VALUES(NULL,8,'米家随身风扇' );
INSERT INTO mi_product VALUES(NULL,8,'小米插线板USB版' );
INSERT INTO mi_product VALUES(NULL,8,'小米插线板6位 基础版' );
INSERT INTO mi_product VALUES(NULL,8,'米家插线板9位长线版' );
INSERT INTO mi_product VALUES(NULL,8,'米家智能插线板' );
/****9 耳机 音箱详细分类****/
INSERT INTO mi_product VALUES(NULL,9,'小米圈铁耳机 Pro' );
INSERT INTO mi_product VALUES(NULL,9,'小米圈铁耳机' );
INSERT INTO mi_product VALUES(NULL,9,'小米头戴式耳机' );
INSERT INTO mi_product VALUES(NULL,9,'小米活塞耳机清新版' );
INSERT INTO mi_product VALUES(NULL,9,'小米降噪耳机' );
INSERT INTO mi_product VALUES(NULL,9,'小米胶囊耳机' );
INSERT INTO mi_product VALUES(NULL,9,'小米运动蓝牙耳机' );
INSERT INTO mi_product VALUES(NULL,9,'小米运动蓝牙耳机mini' );
INSERT INTO mi_product VALUES(NULL,9,'小米蓝牙耳机' ); 
INSERT INTO mi_product VALUES(NULL,9,'小米蓝牙音频接收器' );
INSERT INTO mi_product VALUES(NULL,9,'小米头戴式耳机轻松版' );
INSERT INTO mi_product VALUES(NULL,9,'品牌耳机' ); 
INSERT INTO mi_product VALUES(NULL,9,'小米AI音箱' );
INSERT INTO mi_product VALUES(NULL,9,'小米网络音响' );
INSERT INTO mi_product VALUES(NULL,9,'小米小钢炮蓝牙音箱 2' );
INSERT INTO mi_product VALUES(NULL,9,'小米方盒子蓝牙音箱2' );
INSERT INTO mi_product VALUES(NULL,9,'小米蓝牙音箱' );
INSERT INTO mi_product VALUES(NULL,9,'小米随身蓝牙音箱' );
INSERT INTO mi_product VALUES(NULL,9,'小米音乐闹钟' );
INSERT INTO mi_product VALUES(NULL,9,'小米米兔音箱' );
/****10 生活 米兔 详细分类****/
INSERT INTO mi_product VALUES(NULL,10,'旅行箱' );
INSERT INTO mi_product VALUES(NULL,10,'T恤' );
INSERT INTO mi_product VALUES(NULL,10,'多用笔记本' );
INSERT INTO mi_product VALUES(NULL,10,'牙刷' );
INSERT INTO mi_product VALUES(NULL,10,'双肩包' );
INSERT INTO mi_product VALUES(NULL,10,'运动鞋' );
INSERT INTO mi_product VALUES(NULL,10,'玻璃保鲜盒' );
INSERT INTO mi_product VALUES(NULL,10,'沙发' );
INSERT INTO mi_product VALUES(NULL,10,'儿童书包' );
INSERT INTO mi_product VALUES(NULL,10,'手套' );
INSERT INTO mi_product VALUES(NULL,10,'自动折叠伞' );
INSERT INTO mi_product VALUES(NULL,10,'枕头' );
INSERT INTO mi_product VALUES(NULL,10,'胸包' );
INSERT INTO mi_product VALUES(NULL,10,'围巾' );
INSERT INTO mi_product VALUES(NULL,10,'米家wiha精修螺丝刀套装' );
INSERT INTO mi_product VALUES(NULL,10,'被子' );
INSERT INTO mi_product VALUES(NULL,10,'钱包' );
INSERT INTO mi_product VALUES(NULL,10,'眼镜' );
INSERT INTO mi_product VALUES(NULL,10,'米兔玩偶' );
INSERT INTO mi_product VALUES(NULL,10,'床垫' );
INSERT INTO mi_product VALUES(NULL,10,'收纳包' );
INSERT INTO mi_product VALUES(NULL,10,'米家签字笔' );
INSERT INTO mi_product VALUES(NULL,10,'米兔磁力积木' );
INSERT INTO mi_product VALUES(NULL,10,'针织件套' );
/****手机商品基础信息****/
CREATE TABLE mi_phone_detail(
    pid INT PRIMARY KEY AUTO_INCREMENT,         #商品编号
    apid INT,                                   #种类编号
    title VARCHAR(32),                          #主标题
    givemsg VARCHAR(32),                        #赠送信息
    subtitle VARCHAR(128),                      #副标题
    nprice INT(10),                       #现价
    oprice INT(10),                       #原价
    stock INT(5),                          #库存

    pro_status VARCHAR(32),                     #商品在售状态

    pname VARCHAR(32),                          #详情标题
    spec VARCHAR(64),                           #内存/容量

    color VARCHAR(24),                          #颜色

    insure_price INT(10),                 #保险价格
    promise_tip VARCHAR(48),                    #售后提示

    screen VARCHAR(32),                         #屏幕尺寸
    tscreen VARCHAR(32),			             #屏幕尺寸提示
    battery VARCHAR(32),                        #电池容量
    tbattery VARCHAR(32),			             #电池提示
    cpu VARCHAR(32),                            #处理器
    tcpu VARCHAR(32),				             #处理器提示
    memory VARCHAR(32),                         #内存容量
    tmemory VARCHAR(32),			             #内存容量提示
    video_memory VARCHAR(32),                   #显存容量
    tvideo_memory VARCHAR(48),			         #显存容量提示
    band VARCHAR(32),                           #频段
    tband VARCHAR(32),				             #频段提示
    camera VARCHAR(32),                         #相机
    tcamera VARCHAR(32),			             #相机提示
    record VARCHAR(32),                         #录音
    trecord VARCHAR(32),		                 #录音提示
    fuselage VARCHAR(32),                       #机身
    tfuselage VARCHAR(32)			             #机身提示
);
INSERT INTO mi_phone_detail  VALUES (NULL, 1, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', '红', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 1, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', '黑', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 2, '小米MIX 2', '「3.7~3.9女神节：6GB+64GB直降300元，6GB+128GB直降400元，8GB+128GB全陶瓷版直降400元，女神更享专属福利，全系下单限量赠御泥坊面膜」', '全面屏2.0，5.99"大屏 / 骁龙835旗舰处理器 / 4轴光学防抖 / 6模43频，全球频段。', 3299, 3099, '5', '有现货', '全陶瓷尊享版', '6G+64G', '黑色陶瓷', '79', 'promise_tip', '全面屏 2.0', '5.99" 大屏 18:9 屏幕比例', '', '', '骁龙835', '高通年度旗舰处理器', '8GB 大内存', '另有 6GB 黑色陶瓷版可选', '128GB 大存储', '另有 256GB 黑色陶瓷版可选', '全球频段', '6 模 43 频，全球通', '4 轴光学防抖', '1.25μm 大像素相机', '双 ADC 高清录音', '远处声音也清晰', 'Unibody 全陶瓷', '另有黑色陶瓷版可选');
INSERT INTO mi_phone_detail  VALUES (NULL, 3, '小米MAX', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 4, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 5, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 6, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 7, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 8, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 9, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 10, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 11, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 12, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 13, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 14, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 15, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 16, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');
INSERT INTO mi_phone_detail  VALUES (NULL, 17, '小米Note 3', '打9折', '全面屏', 2599, 2799, '39', 'pro_status', 'pname', 'spec', 'color', '79', 'promise_tip', 'screen', 'tscreen', 'battery', 'tbattery', 'cpu', 'tcpu', 'memory', 'tmemory', 'video_memory', 'tvideo_memory', 'band', 'tband', 'camera', 'tcamera', 'record', 'trecord', 'fuselage', 'tfuselage');

/****首页商品****/
CREATE TABLE mi_index_product(
    ipid INT PRIMARY KEY AUTO_INCREMENT,		   #首页商品编号
    title VARCHAR(32),				           #商品名称
    details VARCHAR(128),		                   #描述
    nprice INT(10),					   #现价
    oprice VARCHAR(10),			                   #原价
    pic VARCHAR(128),			              	   #首页主要图片
    flag VARCHAR(16),			              	   #特殊说明

    review VARCHAR(128),			           #评论详情
    author VARCHAR(32),					   #作者
    floor int(10),					   #楼层编号
    floor_num int(4)					   #在该楼层的菜单编号

);
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 32英寸','64位四核处理器 / 1GB+4GB大内存','999','1199','img/index/pic/xmtv4a32.jpg','享9折','听说小米客服满腹经纶，能不能为在下对副对联！上联是...','来自于 断点 的评价',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 49英寸 标准版','2GB+8GB 大储存 / 全高清HDR','2199','2399','img/index/pic/xmtv4a49.png','享9.2折','从充电宝入坑，小米三、两个小米手环一、一个小米手环二...',' 来自于 178294885 的评价 ',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'13.3"小米笔记本Air i5 8G 256G MX150 银色','','5199','','img/index/pic/xmairi58g.jpg','','太美了！太太太太美了！特别符合我的气质！哈哈哈哈哈哈哈','来自于 1138253788 的评价',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'15.6"小米笔记本Pro i7 16G MX150 深空灰','','6999','','img/index/pic/xmproi78g.jpg','享9.2折','不错，用起很舒服，唯一缺点，没银色',' 来自于 刘杰 的评价 ',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'米家压力IH电饭煲','智能烹饪，灰铸铁粉体涂层内胆','999','','img/index/pic/dfb.jpg','','为新家准备的，还没有用，看着很赏心悦目，我要把新家打...',' 来自于 赵亚飞 的评价 ' ,1,1);
INSERT INTO mi_index_product VALUES(NULL,'米家电水壶','一杯水，是一家人的安心','99','','img/index/pic/dsh.jpg','','已经爱上小米了，怎么办',' 来自于 磊 的评价 ' ,1,1);
INSERT INTO mi_index_product VALUES(NULL,'米家空气净化器Pro','限量赠59元插线板','1499','','img/index/pic/kqjhq.png','','客服妹子加个微信怎样？',' 来自于 朔州滈哥 的评价 ',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'小白摄像机',' ','399','','img/index/pic/xmsxj.jpg','','','',1,1 );
INSERT INTO mi_index_product VALUES(NULL,'13.3"小米笔记本Air i5 8G 256G MX150 银色','','5199','','img/index/pic/xmairi58g.jpg','','太美了！太太太太美了！特别符合我的气质！哈哈哈哈哈哈哈','来自于 1138253788 的评价',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 32英寸','64位四核处理器 / 1GB+4GB大内存','999','1199','img/index/pic/xmtv4a32.jpg','享9折','听说小米客服满腹经纶，能不能为在下对副对联！上联是...','来自于 断点 的评价',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'15.6"小米笔记本Pro i7 16G MX150 深空灰','','6999','','img/index/pic/xmproi78g.jpg','享9.2折','不错，用起很舒服，唯一缺点，没银色',' 来自于 刘杰 的评价 ',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'米家压力IH电饭煲','智能烹饪，灰铸铁粉体涂层内胆','999','','img/index/pic/dfb.jpg','','为新家准备的，还没有用，看着很赏心悦目，我要把新家打...',' 来自于 赵亚飞 的评价 ' ,1,2);
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 49英寸 标准版','2GB+8GB 大储存 / 全高清HDR','2199','2399','img/index/pic/xmtv4a49.png','享9.2折','从充电宝入坑，小米三、两个小米手环一、一个小米手环二...',' 来自于 178294885 的评价 ',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'米家电水壶','一杯水，是一家人的安心','99','','img/index/pic/dsh.jpg','','已经爱上小米了，怎么办',' 来自于 磊 的评价 ' ,1,2);
INSERT INTO mi_index_product VALUES(NULL,'米家空气净化器Pro','限量赠59元插线板','1499','','img/index/pic/kqjhq.png','','客服妹子加个微信怎样？',' 来自于 朔州滈哥 的评价 ',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'小白摄像机',' ','399','','img/index/pic/xmsxj.jpg','','','',1,2 );
INSERT INTO mi_index_product VALUES(NULL,'米家空气净化器Pro','限量赠59元插线板','1499','','img/index/pic/kqjhq.png','','客服妹子加个微信怎样？',' 来自于 朔州滈哥 的评价 ',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'13.3"小米笔记本Air i5 8G 256G MX150 银色','','5199','','img/index/pic/xmairi58g.jpg','','太美了！太太太太美了！特别符合我的气质！哈哈哈哈哈哈哈','来自于 1138253788 的评价',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'米家压力IH电饭煲','智能烹饪，灰铸铁粉体涂层内胆','999','','img/index/pic/dfb.jpg','','为新家准备的，还没有用，看着很赏心悦目，我要把新家打...',' 来自于 赵亚飞 的评价 ' ,1,3);
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 32英寸','64位四核处理器 / 1GB+4GB大内存','999','1199','img/index/pic/xmtv4a32.jpg','享9折','听说小米客服满腹经纶，能不能为在下对副对联！上联是...','来自于 断点 的评价',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'15.6"小米笔记本Pro i7 16G MX150 深空灰','','6999','','img/index/pic/xmproi78g.jpg','享9.2折','不错，用起很舒服，唯一缺点，没银色',' 来自于 刘杰 的评价 ',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'米家电水壶','一杯水，是一家人的安心','99','','img/index/pic/dsh.jpg','','已经爱上小米了，怎么办',' 来自于 磊 的评价 ' ,1,3);
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 49英寸 标准版','2GB+8GB 大储存 / 全高清HDR','2199','2399','img/index/pic/xmtv4a49.png','享9.2折','从充电宝入坑，小米三、两个小米手环一、一个小米手环二...',' 来自于 178294885 的评价 ',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'小白摄像机',' ','399','','img/index/pic/xmsxj.jpg','','','',1,3 );
INSERT INTO mi_index_product VALUES(NULL,'米家电水壶','一杯水，是一家人的安心','99','','img/index/pic/dsh.jpg','','已经爱上小米了，怎么办',' 来自于 磊 的评价 ' ,1,4);
INSERT INTO mi_index_product VALUES(NULL,'米家空气净化器Pro','限量赠59元插线板','1499','','img/index/pic/kqjhq.png','','客服妹子加个微信怎样？',' 来自于 朔州滈哥 的评价 ',1,4 );
INSERT INTO mi_index_product VALUES(NULL,'15.6"小米笔记本Pro i7 16G MX150 深空灰','','6999','','img/index/pic/xmproi78g.jpg','享9.2折','不错，用起很舒服，唯一缺点，没银色',' 来自于 刘杰 的评价 ',1,4 );
INSERT INTO mi_index_product VALUES(NULL,'米家压力IH电饭煲','智能烹饪，灰铸铁粉体涂层内胆','999','','img/index/pic/dfb.jpg','','为新家准备的，还没有用，看着很赏心悦目，我要把新家打...',' 来自于 赵亚飞 的评价 ' ,1,4);
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 32英寸','64位四核处理器 / 1GB+4GB大内存','999','1199','img/index/pic/xmtv4a32.jpg','享9折','听说小米客服满腹经纶，能不能为在下对副对联！上联是...','来自于 断点 的评价',1,4 );
INSERT INTO mi_index_product VALUES(NULL,'13.3"小米笔记本Air i5 8G 256G MX150 银色','','5199','','img/index/pic/xmairi58g.jpg','','太美了！太太太太美了！特别符合我的气质！哈哈哈哈哈哈哈','来自于 1138253788 的评价',1,4 );
INSERT INTO mi_index_product VALUES(NULL,'小米电视4A 49英寸 标准版','2GB+8GB 大储存 / 全高清HDR','2199','2399','img/index/pic/xmtv4a49.png','享9.2折','从充电宝入坑，小米三、两个小米手环一、一个小米手环二...',' 来自于 178294885 的评价 ',1,4 );
INSERT INTO mi_index_product VALUES(NULL,'小白摄像机',' ','399','','img/index/pic/xmsxj.jpg','','','',1,4 );

/**** 商品图片****/
CREATE TABLE mi_product_pic(
  tid INT PRIMARY KEY AUTO_INCREMENT,	     #图片编号
  apid INT,                                   #商品编号
  fid INT,                                   #家族编号
  xs VARCHAR(128),                           #超小图片路径
  sm VARCHAR(128),                           #小图片路径
  md VARCHAR(128),                           #中图片路径
  lg VARCHAR(128)                            #大图片路径
);
# 1 手机
INSERT INTO mi_product_pic VALUES(NULL,1,1,'img/products/xs/phone/note3-80-2.png','img/products/sm/phone/mix2140x140.jpg','img/products/md/phone/note2320x220.png','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,2,1,'img/products/xs/phone/mix2-80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,3,1,'img/products/xs/phone/xm6_80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,4,1,'img/products/xs/phone/80pc-5x.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,5,1,'img/products/xs/phone/max2_80.jpg','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,6,1,'img/products/xs/phone/redmi5P-80-80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,7,1,'img/products/xs/phone/redmi5-80-80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,8,1,'img/products/xs/phone/80-5a.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,9,1,'img/products/xs/phone/805a.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,10,1,'img/products/xs/phone/hmn4x80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,11,1,'img/products/xs/phone/hm4x_80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,12,1,'img/products/xs/phone/80-4a.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,13,1,'img/products/xs/phone/80.jpg','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,14,1,'img/products/xs/phone/compare.jpg','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,15,1,'img/products/xs/phone/mifenka-1.jpg','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,16,1,'img/products/xs/phone/mimobile.jpg','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
INSERT INTO mi_product_pic VALUES(NULL,17,1,'img/products/xs/phone/weixiu80-80.png','img/products/sm/phone/note3_140x140.jpg','img/products/md/phone/note3_140x140.jpg','img/products/lg/phone/note3_140x140.jpg');
# 2 电视
INSERT INTO mi_product_pic VALUES(NULL,18,2,'img/products/xs/tv/xin55.png','img/products/sm/tv/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,19,2,'img/products/xs/tv/80xmds_49.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,20,2,'img/products/xs/tv/xp80_55.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,21,2,'img/products/xs/tv/hezi80-80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,22,2,'img/products/xs/tv/xin43.png','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,23,2,'img/products/xs/tv/80xmds_55.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,24,2,'img/products/xs/tv/xp80_65.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,25,2,'img/products/xs/tv/hezi80-80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,26,2,'img/products/xs/tv/4A5080.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,27,2,'img/products/xs/tv/80xmds_65.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,28,2,'img/products/xs/tv/6580side.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,29,2,'img/products/xs/tv/iconaz80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,30,2,'img/products/xs/tv/80_8055tv.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,31,2,'img/products/xs/tv/zuodaohang.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,32,2,'img/products/xs/tv/hezibai480_80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,33,2,'img/products/xs/tv/dianshipeijian.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,34,2,'img/products/xs/tv/80_8032tv.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,35,2,'img/products/xs/tv/4A43.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,36,2,'img/products/xs/tv/heihezi4c80_80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,37,2,'img/products/xs/tv/huiyuan.png','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,38,2,'img/products/xs/tv/tiyu4380_80.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,39,2,'img/products/xs/tv/xp80_49.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,40,2,'img/products/xs/tv/hezizengqiangban80side.jpg','img/products/sm/tv/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,41,2,'img/products/xs/tv/ertong1.png','img/products/sm/tv/note3_140x140.jpg','','');
# 3 笔记本
INSERT INTO mi_product_pic VALUES(NULL,42,3,'img/products/xs/laptop/bijiben80.jpg','img/products/sm/laptop/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,43,3,'img/products/xs/laptop/usbzjqggg80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,44,3,'img/products/xs/laptop/xmsbd80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,45,3,'img/products/xs/laptop/bijiben80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,46,3,'img/products/xs/laptop/vga.png','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,47,3,'img/products/xs/laptop/USBC80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,48,3,'img/products/xs/laptop/bijiben80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,49,3,'img/products/xs/laptop/neidanbao80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,50,3,'img/products/xs/laptop/xiaozhuanjieqi.png','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,51,3,'img/products/xs/laptop/80x80.png','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,52,3,'img/products/xs/laptop/ymjp80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,53,3,'img/products/xs/laptop/WechatIMG605.png','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,54,3,'img/products/xs/laptop/shubiao80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,55,3,'img/products/xs/laptop/bjbcdq80.jpg','img/products/sm/laptop/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,56,3,'img/products/xs/laptop/wxsb80.png','img/products/sm/laptop/note3_140x140.jpg','','');
# 4 家电
INSERT INTO mi_product_pic VALUES(NULL,57,4,'img/products/xs/homeelec/jinghuaqi2-80.jpg','img/products/sm/homeelec/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,58,4,'img/products/xs/homeelec/jingshuicxs-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,59,4,'img/products/xs/homeelec/jiqiren.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,60,4,'img/products/xs/homeelec/jinghuaqiPro-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,61,4,'img/products/xs/homeelec/jingshuiqiandlvxin-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,62,4,'img/products/xs/homeelec/saodipeijian-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,63,4,'img/products/xs/homeelec/jinghuaqi2S-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,64,4,'img/products/xs/homeelec/shuihu80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,65,4,'img/products/xs/homeelec/yalidianfanbao-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,66,4,'img/products/xs/homeelec/jinghuaqiMAX-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,67,4,'img/products/xs/homeelec/dianshuihu-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,68,4,'img/products/xs/homeelec/dianfanbao3L-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,69,4,'img/products/xs/homeelec/czjhq80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,70,4,'img/products/xs/homeelec/jianceyi-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,71,4,'img/products/xs/homeelec/dianfanbao4L-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,72,4,'img/products/xs/homeelec/kongjinlvxin-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,73,4,'img/products/xs/homeelec/jiancebi-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,74,4,'img/products/xs/homeelec/touyingdianshi-80.jpg','img/products/sm/homeelec/note3_140x140.jpg','','');
# 5 家居
INSERT INTO mi_product_pic VALUES(NULL,75,5,'img/products/xs/homehel/shouhuan280.jpg','img/products/sm/homehel/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,76,5,'img/products/xs/homehel/tiwenji-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,77,5,'img/products/xs/homehel/LEDtaideng-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,78,5,'img/products/xs/homehel/micamera-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,79,5,'img/products/xs/homehel/wandai-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,80,5,'img/products/xs/homehel/xueyaji-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,81,5,'img/products/xs/homehel/flptaideng-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,82,5,'img/products/xs/homehel/camera-head-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,83,5,'img/products/xs/homehel/shouhuanchongdianqi-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,84,5,'img/products/xs/homehel/yashua80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,85,5,'img/products/xs/homehel/nightlight-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,86,5,'img/products/xs/homehel/xiaofang-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,87,5,'img/products/xs/homehel/yundongshoubiao-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,88,5,'img/products/xs/homehel/zhinengjiatingtaozhuang-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,89,5,'img/products/xs/homehel/mj-bedsidelamp-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,90,5,'img/products/xs/homehel/mj-bedsidelamp-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,91,5,'img/products/xs/homehel/mj-bedsidelamp-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,92,5,'img/products/xs/homehel/zhinengchazuo-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,93,5,'img/products/xs/homehel/flashlight-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,94,5,'img/products/xs/homehel/colorfullamp-80.jpg','img/products/sm/homehel/note3_140x140.jpg','','');
# 6 儿童
INSERT INTO mi_product_pic VALUES(NULL,95,6,'img/products/xs/toy/scooter-80.jpg','img/products/sm/toy/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,96,6,'img/products/xs/toy/shoubiao280.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,97,6,'img/products/xs/toy/wurenji80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,98,6,'img/products/xs/toy/phcplus80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,99,6,'img/products/xs/toy/toyblock2-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,100,6,'img/products/xs/toy/djj80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,101,6,'img/products/xs/toy/scooter2-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,102,6,'img/products/xs/toy/mitu-mini-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,103,6,'img/products/xs/toy/camera-small-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,104,6,'img/products/xs/toy/zxc80-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,105,6,'img/products/xs/toy/zxc80-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,106,6,'img/products/xs/toy/mj-panorama-camera-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,107,6,'img/products/xs/toy/toyblock-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,108,6,'img/products/xs/toy/yi-camera-m1-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,109,6,'img/products/xs/toy/mirror-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,110,6,'img/products/xs/toy/locatephone-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,111,6,'img/products/xs/toy/mj-bedsidelamp-80.jpg','img/products/sm/toy/note3_140x140.jpg','','');

# 7 路由器
INSERT INTO mi_product_pic VALUES(NULL,112,7,'img/products/xs/router/miwifi3-80.jpg','img/products/sm/router/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,113,7,'img/products/xs/router/WiFifangdaqi2-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,114,7,'img/products/xs/router/baohu.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,115,7,'img/products/xs/router/miwifi3c-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,116,7,'img/products/xs/router/miwifi3c-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,117,7,'img/products/xs/router/miwifi3g-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,118,7,'img/products/xs/router/plc-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,119,7,'img/products/xs/router/zhijia80x80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,120,7,'img/products/xs/router/miwifi3a-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,121,7,'img/products/xs/router/VRPLAY2.png','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,122,7,'img/products/xs/router/shujuxian-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,123,7,'img/products/xs/router/luyouqiPro-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,124,7,'img/products/xs/router/miniwifi-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,125,7,'img/products/xs/router/cunchu80x80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,126,7,'img/products/xs/router/luyouqiHD-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,127,7,'img/products/xs/router/qianzhaowangxian-80.jpg','img/products/sm/router/note3_140x140.jpg','','');
# 8 插线板
INSERT INTO mi_product_pic VALUES(NULL,128,8,'img/products/xs/power/dianyuan2.100080.jpg','img/products/sm/power/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,129,8,'img/products/xs/power/5Battery1.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,130,8,'img/products/xs/power/chaxianban3wei-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,131,8,'img/products/xs/power/dianyuan2c-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,132,8,'img/products/xs/power/chongdianqi-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,133,8,'img/products/xs/power/c1xb343.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,134,8,'img/products/xs/power/dianyuan2-5qian-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,135,8,'img/products/xs/power/chezaichongdianqi80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,136,8,'img/products/xs/power/shoudiantong8080.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,137,8,'img/products/xs/power/fengshan80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,138,8,'img/products/xs/power/baohutao80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,139,8,'img/products/xs/power/chaxianbanusb-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,140,8,'img/products/xs/power/7Battery1.jpg','img/products/sm/power/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,141,8,'img/products/xs/power/chaxianban6wei-80.jpg','img/products/sm/power/note3_140x140.jpg','','');
# 9 耳机
INSERT INTO mi_product_pic VALUES(NULL,142,9,'img/products/xs/headset/yundong80.jpg','img/products/sm/headset/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,143,9,'img/products/xs/headset/80x80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,144,9,'img/products/xs/headset/mituyinx80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,145,9,'img/products/xs/headset/quantie.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,146,9,'img/products/xs/headset/3-80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,147,9,'img/products/xs/headset/wlyx80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,148,9,'img/products/xs/headset/huosai1.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,149,9,'img/products/xs/headset/bluetoothheadset.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,150,9,'img/products/xs/headset/xiaogangpao2-hei-80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,151,9,'img/products/xs/headset/xmjzej80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,152,9,'img/products/xs/headset/bluerecive.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,153,9,'img/products/xs/headset/fhzlyyx80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,154,9,'img/products/xs/headset/qtpro80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,155,9,'img/products/xs/headset/tdsqs80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,156,9,'img/products/xs/headset/pocketaudio.png','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,157,9,'img/products/xs/headset/toudai80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,158,9,'img/products/xs/headset/pinpai80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,159,9,'img/products/xs/headset/suishen-80.jpg','img/products/sm/headset/note3_140x140.jpg','','');
# 10 生活
INSERT INTO mi_product_pic VALUES(NULL,160,10,'img/products/xs/oth/lvxingxiang.jpg','img/products/sm/oth/mix2140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,161,10,'img/products/xs/oth/txv80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,162,10,'img/products/xs/oth/duoyongbijiben-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,163,10,'img/products/xs/oth/yashua80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,164,10,'img/products/xs/oth/xiangbao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,165,10,'img/products/xs/oth/ydx80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,166,10,'img/products/xs/oth/baoxianhe-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,167,10,'img/products/xs/oth/shafa-80.png','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,168,10,'img/products/xs/oth/ertongshubao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,169,10,'img/products/xs/oth/shoutao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,170,10,'img/products/xs/oth/san.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,171,10,'img/products/xs/oth/zhentou80.png','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,172,10,'img/products/xs/oth/xiongbao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,173,10,'img/products/xs/oth/weibo-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,174,10,'img/products/xs/oth/luosidao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,175,10,'img/products/xs/oth/beizi80.png','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,176,10,'img/products/xs/oth/qianbao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,177,10,'img/products/xs/oth/tyj80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,178,10,'img/products/xs/oth/mitu-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,179,10,'img/products/xs/oth/chuangdian-80-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,180,10,'img/products/xs/oth/shounabao-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,181,10,'img/products/xs/oth/qianzibi-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,182,10,'img/products/xs/oth/cilijimu.80.jpg','img/products/sm/oth/note3_140x140.jpg','','');
INSERT INTO mi_product_pic VALUES(NULL,183,10,'img/products/xs/oth/sijiantao-80-80.jpg','img/products/sm/oth/note3_140x140.jpg','','');

/**明星单品
CREATE TABLE mi_star_goods (
sid INT PRIMARY KEY AUTO_INCREMENT,

);**/

/****用户信息****/
CREATE TABLE mi_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  birth BIGINT,
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名,如王小明
  gender INT                  #性别  0-女  1-男
);
INSERT INTO mi_user VALUES(NULL,'dongdong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','冬冬',1);
INSERT INTO mi_user VALUES(NULL,'dingding','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','丁丁',1);
INSERT INTO mi_user VALUES(NULL,'dangdang','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','当当',1);
INSERT INTO mi_user VALUES(NULL,'honghong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','红红',0);
INSERT INTO mi_user VALUES(NULL,'tongtong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','彤彤',0);
INSERT INTO mi_user VALUES(NULL,'congcong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','聪聪',0);
INSERT INTO mi_user VALUES(NULL,'dong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','东',1);
INSERT INTO mi_user VALUES(NULL,'dingdong','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','叮咚',1);
INSERT INTO mi_user VALUES(NULL,'yaya','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','丫丫',0);
INSERT INTO mi_user VALUES(NULL,'lily','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','莉莉',0);
INSERT INTO mi_user VALUES(NULL,'fff','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','发发发',1);
INSERT INTO mi_user VALUES(NULL,'dog','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','狗儿',1);
INSERT INTO mi_user VALUES(NULL,'didi','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','迪迪',0);
INSERT INTO mi_user VALUES(NULL,'wawa','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','娃娃',0);
INSERT INTO mi_user VALUES(NULL,'xiaoxiao','123456','12345678@qq.com','15588886666','1990-01-01','img/users/default.png','小小',0);
/****用户收货地址****/
CREATE TABLE mi_receiver_address(
 aid INT PRIMARY KEY AUTO_INCREMENT,
 uid INT,
 receiver VARCHAR(16),
 province VARCHAR(16),
 city VARCHAR(16),
 county    VARCHAR(16),
 address VARCHAR(128),
 cellphone VARCHAR(16),
 fixedphone VARCHAR(16),
 postcode CHAR(6),
 tag VARCHAR(16),
 is_default BOOLEAN
);

/**购物车条目**/
CREATE TABLE mi_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                                #用户编号
  pid INT,                                    #商品编号
  count INT,                                  #购买数量
  is_checked BOOLEAN                         #是否已勾选,确定购买

);
INSERT INTO mi_shoppingcart_item  VALUES (NULL,1,1,2,0);
INSERT INTO mi_shoppingcart_item  VALUES (NULL,2,1,2,0);
INSERT INTO mi_shoppingcart_item  VALUES (NULL,3,1,2,0);
INSERT INTO mi_shoppingcart_item  VALUES (NULL,4,1,2,0);
INSERT INTO mi_shoppingcart_item  VALUES (NULL,5,1,2,0);
/****首页轮播广告商品****/
CREATE TABLE mi_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);
INSERT INTO mi_index_carousel VALUES(NULL,'img/index/carousel/1.jpg','','' );
INSERT INTO mi_index_carousel VALUES(NULL,'img/index/carousel/2.jpg','','' );
INSERT INTO mi_index_carousel VALUES(NULL,'img/index/carousel/3.jpg','','' );
INSERT INTO mi_index_carousel VALUES(NULL,'img/index/carousel/4.jpg','','' );
INSERT INTO mi_index_carousel VALUES(NULL,'img/index/carousel/5.jpg','','' );