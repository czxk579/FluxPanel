-- Active: 1751959165738@@140.83.86.13@3306@flux_data
/*
Navicat Premium Dump SQL

Source Server         : localhost
Source Server Type    : MySQL
Source Server Version : 90200 (9.2.0)
Source Host           : localhost:3306
Source Schema         : flux_data

Target Server Type    : MySQL
Target Server Version : 90200 (9.2.0)
File Encoding         : 65001

Date: 11/04/2025 14:42:18
*/

SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apscheduler_jobs
-- ----------------------------
DROP TABLE IF EXISTS `apscheduler_jobs`;

CREATE TABLE `apscheduler_jobs` (
    `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `next_run_time` double DEFAULT NULL,
    `job_state` blob NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `ix_apscheduler_jobs_next_run_time` (`next_run_time`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务';

-- ----------------------------
-- Records of apscheduler_jobs
-- ----------------------------
BEGIN;

COMMIT;

-- ----------------------------
-- Table structure for car_driver
-- ----------------------------
DROP TABLE IF EXISTS `car_driver`;

CREATE TABLE `car_driver` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志',
    `create_by` int NOT NULL COMMENT '创建者',
    `dept_id` int NOT NULL COMMENT '部门id',
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '司机名称',
    `age` int NOT NULL COMMENT '年龄',
    `driver_years` int NOT NULL COMMENT '驾龄',
    `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '图片',
    `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所在位置',
    `price` decimal(10, 2) NOT NULL DEFAULT '0.00' COMMENT '价格',
    `car_type` int NOT NULL DEFAULT '1' COMMENT '车辆类型',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '司机信息';

-- ----------------------------
-- Records of car_driver
-- ----------------------------
BEGIN;

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        14,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        15,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        16,
        '2025-02-18 23:59:55',
        '2025-03-13 13:38:14',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        'admin创建',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        17,
        '2025-02-19 00:01:58',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        'Richard专属',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        18,
        '2025-02-20 22:33:07',
        '2025-03-13 13:38:14',
        '0',
        2,
        105,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '山东临沂平邑',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        21,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        22,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        23,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        24,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        25,
        '2025-02-18 23:59:55',
        '2025-03-13 13:38:14',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        'admin创建',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        26,
        '2025-02-19 00:01:58',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        'Richard专属',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        27,
        '2025-02-20 22:33:07',
        '2025-03-13 13:38:14',
        '0',
        2,
        105,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '山东临沂平邑',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        29,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        30,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        31,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        32,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        33,
        '2025-02-18 23:59:55',
        '2025-03-13 13:38:14',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        'admin创建',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        34,
        '2025-02-19 00:01:58',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        'Richard专属',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        35,
        '2025-02-20 22:33:07',
        '2025-03-13 13:38:14',
        '0',
        2,
        105,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '山东临沂平邑',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        37,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        38,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        39,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        40,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        41,
        '2025-02-18 23:59:55',
        '2025-03-13 13:38:14',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        'admin创建',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        42,
        '2025-02-19 00:01:58',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        'Richard专属',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        43,
        '2025-02-20 22:33:07',
        '2025-03-13 13:38:14',
        '0',
        2,
        105,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '山东临沂平邑',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        45,
        '2025-02-13 14:41:38',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '北京市朝阳区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        46,
        '2025-02-13 14:43:26',
        '2025-03-13 13:38:14',
        '0',
        115,
        105,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '上海市浦江区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        49,
        NULL,
        NULL,
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        50,
        NULL,
        NULL,
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        51,
        NULL,
        NULL,
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        52,
        NULL,
        NULL,
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        53,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        54,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        55,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        56,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        57,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        58,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        59,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        60,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        61,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        62,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        63,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        64,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        65,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        66,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        67,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        68,
        NULL,
        NULL,
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        69,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        70,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        71,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        72,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        73,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        74,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        75,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        76,
        NULL,
        NULL,
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        77,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        78,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        79,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        80,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津港',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        81,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        82,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        83,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        84,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        85,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        86,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        87,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        88,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津港',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        89,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        90,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        91,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        92,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        93,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        94,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        95,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        96,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津港',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        97,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        98,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        99,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        100,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        101,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        102,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        103,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        104,
        '2025-03-22 17:49:31',
        '2025-03-22 17:49:31',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津港',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        105,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '青岛',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        106,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '青岛',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        107,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '青岛',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        108,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '青岛',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        109,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        110,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        111,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        112,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        113,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        114,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        115,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        116,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '青岛',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        117,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        118,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        119,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        120,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        121,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        122,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        123,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        124,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '青岛',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        125,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        126,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        127,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        128,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        129,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        130,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        131,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        132,
        '2025-03-23 13:14:01',
        '2025-03-23 13:14:01',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '青岛',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        133,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津市区',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        134,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津市区',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        135,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津市区',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        136,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '孙大圣',
        30,
        6,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740061967.9344876.jpeg',
        '天津市区',
        899.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        137,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        138,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        139,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        140,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard专属',
        48,
        20,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894489.579735.jpeg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        141,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        142,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        143,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        144,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Admin专属',
        30,
        8,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894367.7501671.jpg',
        '天津市区',
        888.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        145,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        146,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        147,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        148,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        149,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        150,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        151,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        35,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        152,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        '牛先生',
        65,
        9,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg',
        '天津市区',
        850.00,
        2
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        153,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        154,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        155,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        156,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        157,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        158,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        159,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

INSERT INTO
    `car_driver` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `age`,
        `driver_years`,
        `image`,
        `location`,
        `price`,
        `car_type`
    )
VALUES (
        160,
        '2025-03-23 13:15:38',
        '2025-03-23 13:15:38',
        '0',
        1,
        103,
        'Richard',
        30,
        5,
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894293.3491251.jpeg',
        '天津市区',
        599.00,
        1
    );

COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
    `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
    `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
    `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
    `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联子表的表名',
    `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '子表关联的外键名',
    `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
    `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
    `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
    `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
    `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
    `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
    `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
    `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
    `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
    `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
    `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标志',
    PRIMARY KEY (`table_id`) USING BTREE,
    UNIQUE KEY `gen_table_id` (`table_id`) USING BTREE COMMENT 'unique'
) ENGINE = InnoDB AUTO_INCREMENT = 38 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;

INSERT INTO
    `gen_table` (
        `table_id`,
        `table_name`,
        `table_comment`,
        `sub_table_name`,
        `sub_table_fk_name`,
        `class_name`,
        `tpl_category`,
        `tpl_web_type`,
        `package_name`,
        `module_name`,
        `business_name`,
        `function_name`,
        `function_author`,
        `gen_type`,
        `gen_path`,
        `options`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`,
        `del_flag`
    )
VALUES (
        31,
        'car_driver',
        '司机信息',
        NULL,
        NULL,
        'CarDriver',
        'crud',
        'element-plus',
        'module_admin',
        'car',
        'driver',
        '司机信息',
        'FluxAdmin',
        '0',
        '/',
        '{\"parentMenuId\": 2028}',
        '',
        '2025-02-22 23:57:18',
        '',
        '2025-02-22 23:57:18',
        NULL,
        '0'
    );

INSERT INTO
    `gen_table` (
        `table_id`,
        `table_name`,
        `table_comment`,
        `sub_table_name`,
        `sub_table_fk_name`,
        `class_name`,
        `tpl_category`,
        `tpl_web_type`,
        `package_name`,
        `module_name`,
        `business_name`,
        `function_name`,
        `function_author`,
        `gen_type`,
        `gen_path`,
        `options`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`,
        `del_flag`
    )
VALUES (
        32,
        'sys_form',
        '系统表单',
        NULL,
        NULL,
        'SysForm',
        'crud',
        'element-plus',
        'module_admin',
        'sys',
        'form',
        '系统表单',
        'FluxAdmin',
        '0',
        '/',
        '{\"parentMenuId\": 3}',
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        NULL,
        '0'
    );

INSERT INTO
    `gen_table` (
        `table_id`,
        `table_name`,
        `table_comment`,
        `sub_table_name`,
        `sub_table_fk_name`,
        `class_name`,
        `tpl_category`,
        `tpl_web_type`,
        `package_name`,
        `module_name`,
        `business_name`,
        `function_name`,
        `function_author`,
        `gen_type`,
        `gen_path`,
        `options`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`,
        `del_flag`
    )
VALUES (
        33,
        'sys_form_data',
        '系统表单',
        NULL,
        NULL,
        'SysFormData',
        'crud',
        'element-plus',
        'module_admin',
        'sys',
        'form_data',
        '表单数据',
        'FluxAdmin',
        '0',
        '/',
        '{\"parentMenuId\": 3}',
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        NULL,
        '0'
    );

INSERT INTO
    `gen_table` (
        `table_id`,
        `table_name`,
        `table_comment`,
        `sub_table_name`,
        `sub_table_fk_name`,
        `class_name`,
        `tpl_category`,
        `tpl_web_type`,
        `package_name`,
        `module_name`,
        `business_name`,
        `function_name`,
        `function_author`,
        `gen_type`,
        `gen_path`,
        `options`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`,
        `del_flag`
    )
VALUES (
        34,
        'sys_table',
        '表格管理',
        NULL,
        NULL,
        'SysTable',
        'crud',
        '',
        'module_admin',
        'sys',
        'table',
        '表格管理',
        'FluxAdmin',
        '0',
        '/',
        NULL,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        NULL,
        '0'
    );

INSERT INTO
    `gen_table` (
        `table_id`,
        `table_name`,
        `table_comment`,
        `sub_table_name`,
        `sub_table_fk_name`,
        `class_name`,
        `tpl_category`,
        `tpl_web_type`,
        `package_name`,
        `module_name`,
        `business_name`,
        `function_name`,
        `function_author`,
        `gen_type`,
        `gen_path`,
        `options`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`,
        `del_flag`
    )
VALUES (
        37,
        'student_info',
        '学生信息表',
        NULL,
        NULL,
        'StudentInfo',
        'crud',
        'element-plus',
        'module_admin',
        'student',
        'info',
        '学生信息表',
        'FluxAdmin',
        '0',
        '/',
        '{\"parentMenuId\": 2028}',
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        NULL,
        '0'
    );

COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
    `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
    `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
    `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
    `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
    `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
    `python_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
    `python_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
    `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
    `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
    `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
    `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
    `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
    `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
    `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
    `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
    `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
    `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
    `sort` int DEFAULT NULL COMMENT '排序',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标志',
    PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 457 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        366,
        31,
        'id',
        'id',
        'int(11)',
        'int',
        'id',
        '1',
        '1',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        1,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        367,
        31,
        'create_time',
        '创建时间',
        'datetime',
        'datetime',
        'create_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'datetime',
        '',
        2,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        368,
        31,
        'update_time',
        '更新时间',
        'datetime',
        'datetime',
        'update_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        3,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        369,
        31,
        'del_flag',
        '删除标志',
        'char(1)',
        'str',
        'del_flag',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        4,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        370,
        31,
        'create_by',
        '创建者',
        'int(11)',
        'int',
        'create_by',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        5,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        371,
        31,
        'dept_id',
        '部门id',
        'int(11)',
        'int',
        'dept_id',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        6,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        372,
        31,
        'name',
        '司机名称',
        'varchar(255)',
        'str',
        'name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'LIKE',
        'input',
        '',
        7,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        373,
        31,
        'age',
        '年龄',
        'int(11)',
        'int',
        'age',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        8,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        374,
        31,
        'driver_years',
        '驾龄',
        'int(11)',
        'int',
        'driver_years',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        9,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        375,
        31,
        'image',
        '图片',
        'varchar(255)',
        'str',
        'image',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'imageUpload',
        '',
        10,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        376,
        31,
        'location',
        '所在位置',
        'varchar(255)',
        'str',
        'location',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        11,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        377,
        31,
        'price',
        '价格',
        'decimal(10,2)',
        'float',
        'price',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        12,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        378,
        31,
        'car_type',
        '车辆类型',
        'int(11)',
        'int',
        'car_type',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'select',
        'car_type',
        13,
        '',
        '2025-03-05 22:21:45',
        '',
        '2025-03-05 22:21:46',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        379,
        32,
        'id',
        'id',
        'int(11)',
        'int',
        'id',
        '1',
        '1',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        1,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        380,
        32,
        'create_time',
        '创建时间',
        'datetime',
        'datetime',
        'create_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        2,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        381,
        32,
        'update_time',
        '更新时间',
        'datetime',
        'datetime',
        'update_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        3,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        382,
        32,
        'del_flag',
        '删除标志',
        'char(1)',
        'str',
        'del_flag',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        4,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        383,
        32,
        'create_by',
        '创建者',
        'int(11)',
        'int',
        'create_by',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        5,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        384,
        32,
        'dept_id',
        '部门id',
        'int(11)',
        'int',
        'dept_id',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        6,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        385,
        32,
        'name',
        '表单名称',
        'varchar(255)',
        'str',
        'name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'LIKE',
        'input',
        '',
        7,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        386,
        32,
        'content',
        '表单代码',
        'text',
        'str',
        'content',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        '0',
        'EQ',
        'textarea',
        '',
        8,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        387,
        32,
        'form_data',
        '表单内容',
        'text',
        'str',
        'form_data',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        '0',
        'EQ',
        'textarea',
        '',
        9,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        388,
        32,
        'form_conf',
        '表单配置',
        'text',
        'str',
        'form_conf',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        '0',
        'EQ',
        'textarea',
        '',
        10,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        389,
        32,
        'generate_conf',
        '生成配置',
        'text',
        'str',
        'generate_conf',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'textarea',
        '',
        11,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        390,
        33,
        'id',
        'id',
        'int(11)',
        'int',
        'id',
        '1',
        '1',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        1,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        391,
        33,
        'create_time',
        '创建时间',
        'datetime',
        'datetime',
        'create_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        2,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        392,
        33,
        'update_time',
        '更新时间',
        'datetime',
        'datetime',
        'update_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '0',
        NULL,
        'EQ',
        'datetime',
        '',
        3,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        393,
        33,
        'del_flag',
        '删除标志',
        'char(1)',
        'str',
        'del_flag',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        4,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        394,
        33,
        'create_by',
        '创建者',
        'int(11)',
        'int',
        'create_by',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        5,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        395,
        33,
        'dept_id',
        '部门id',
        'int(11)',
        'int',
        'dept_id',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        6,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        396,
        33,
        'form_name',
        '表单名称',
        'varchar(255)',
        'str',
        'form_name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        7,
        '',
        '2025-03-07 09:55:03',
        '',
        '2025-03-07 09:55:03',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        397,
        33,
        'form_data',
        '表单数据',
        'text',
        'str',
        'form_data',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'textarea',
        '',
        8,
        '',
        '2025-03-07 09:55:04',
        '',
        '2025-03-07 09:55:04',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        398,
        33,
        'form_id',
        '表单ID',
        'int(11)',
        'int',
        'form_id',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        9,
        '',
        '2025-03-07 09:55:04',
        '',
        '2025-03-07 09:55:04',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        399,
        34,
        'id',
        'ID',
        'int(11)',
        'int',
        'id',
        '1',
        '1',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        1,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        400,
        34,
        'create_time',
        '创建时间',
        'datetime',
        'datetime',
        'create_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'datetime',
        '',
        2,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        401,
        34,
        'update_time',
        '更新时间',
        'datetime',
        'datetime',
        'update_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        3,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        402,
        34,
        'del_flag',
        '删除标志',
        'char(1)',
        'str',
        'del_flag',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        4,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        403,
        34,
        'update_by',
        '更新者',
        'int(11)',
        'int',
        'update_by',
        '0',
        '0',
        '0',
        '1',
        '1',
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        5,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        404,
        34,
        'update_by_name',
        '更新者',
        'varchar(255)',
        'str',
        'update_by_name',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        6,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        405,
        34,
        'table_name',
        '表名',
        'varchar(255)',
        'str',
        'table_name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        7,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        406,
        34,
        'field_name',
        '字段名',
        'varchar(255)',
        'str',
        'field_name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        8,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        407,
        34,
        'show',
        '可见',
        'char(1)',
        'str',
        'show',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        9,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        408,
        34,
        'prop',
        '属性（驼峰值）',
        'varchar(255)',
        'str',
        'prop',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        10,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        409,
        34,
        'label',
        '字段标签',
        'varchar(255)',
        'str',
        'label',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        11,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        410,
        34,
        'sortable',
        '可排序',
        'char(1)',
        'str',
        'sortable',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        12,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        411,
        34,
        'width',
        '宽度',
        'int(11)',
        'int',
        'width',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        13,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        412,
        34,
        'label_tip',
        '字段标签解释',
        'varchar(255)',
        'str',
        'label_tip',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        14,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        413,
        34,
        'fixed',
        '固定表头',
        'char(1)',
        'str',
        'fixed',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        15,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        414,
        34,
        'align',
        '对其方式',
        'varchar(255)',
        'str',
        'align',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        16,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        415,
        34,
        'tooltip',
        '超出隐藏',
        'char(1)',
        'str',
        'tooltip',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        17,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        416,
        34,
        'sequence',
        '字段顺序',
        'int(11)',
        'int',
        'sequence',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        18,
        '',
        '2025-03-10 09:37:28',
        '',
        '2025-03-10 09:37:28',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        444,
        37,
        'id',
        'ID',
        'int unsigned',
        'int',
        'id',
        '1',
        '1',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        NULL,
        '',
        1,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        445,
        37,
        'create_time',
        '创建时间',
        'datetime',
        'datetime',
        'create_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'datetime',
        '',
        2,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        446,
        37,
        'update_time',
        '更新时间',
        'datetime',
        'datetime',
        'update_time',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        '1',
        NULL,
        'EQ',
        'datetime',
        '',
        3,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        447,
        37,
        'dept_id',
        '部门id',
        'int',
        'int',
        'dept_id',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        4,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        448,
        37,
        'del_flag',
        '删除标志',
        'char(1)',
        'str',
        'del_flag',
        '0',
        '0',
        '0',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        5,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        449,
        37,
        'create_by',
        '创建者',
        'int',
        'int',
        'create_by',
        '0',
        '0',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        'EQ',
        'input',
        '',
        6,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        450,
        37,
        'name',
        '姓名',
        'varchar(50)',
        'str',
        'name',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        7,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        451,
        37,
        'gender',
        '性别',
        'char(1)',
        'str',
        'gender',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'select',
        'sys_user_sex',
        8,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        452,
        37,
        'major',
        '专业',
        'varchar(100)',
        'str',
        'major',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        9,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        453,
        37,
        'class_name',
        '班级',
        'varchar(50)',
        'str',
        'class_name',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        10,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        454,
        37,
        'date_of_birth',
        '出生日期',
        'datetime',
        'datetime',
        'date_of_birth',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'datetime',
        '',
        11,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        455,
        37,
        'phone_number',
        '联系电话',
        'varchar(20)',
        'str',
        'phone_number',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '1',
        'EQ',
        'input',
        '',
        12,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

INSERT INTO
    `gen_table_column` (
        `column_id`,
        `table_id`,
        `column_name`,
        `column_comment`,
        `column_type`,
        `python_type`,
        `python_field`,
        `is_pk`,
        `is_increment`,
        `is_required`,
        `is_insert`,
        `is_edit`,
        `is_list`,
        `is_query`,
        `query_type`,
        `html_type`,
        `dict_type`,
        `sort`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `del_flag`
    )
VALUES (
        456,
        37,
        'email',
        '电子邮箱',
        'varchar(100)',
        'str',
        'email',
        '0',
        '0',
        '0',
        '1',
        '1',
        '1',
        '0',
        'EQ',
        'input',
        '',
        13,
        '',
        '2025-03-23 13:45:11',
        '',
        '2025-03-23 13:45:11',
        '0'
    );

COMMIT;

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
    `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `dept_id` int NOT NULL COMMENT '部门id',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志',
    `create_by` int NOT NULL COMMENT '创建者',
    `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
    `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
    `major` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '专业',
    `class_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '班级',
    `date_of_birth` datetime DEFAULT NULL COMMENT '出生日期',
    `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
    `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '电子邮箱',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 176 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '学生信息表';

-- ----------------------------
-- Records of student_info
-- ----------------------------
BEGIN;

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        1,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '张三',
        '0',
        '计算机科学',
        'CS2025',
        '2002-05-10 00:00:00',
        '13800000001',
        'zhangsan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        2,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '李四',
        '1',
        '软件工程',
        'SE2024',
        '2003-08-15 00:00:00',
        '13800000002',
        'lisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        3,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '王五',
        '0',
        '电子信息',
        'EE2023',
        '2001-11-20 00:00:00',
        '13800000003',
        'wangwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        4,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '赵六',
        '1',
        '数据科学',
        'DS2025',
        '2004-03-05 00:00:00',
        '13800000004',
        'zhaoliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        5,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '孙七',
        '0',
        '自动化',
        'AU2024',
        '2003-06-18 00:00:00',
        '13800000005',
        'sunqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        6,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '周八',
        '1',
        '网络工程',
        'NE2023',
        '2002-09-22 00:00:00',
        '13800000006',
        'zhouba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        7,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '吴九',
        '0',
        '人工智能',
        'AI2025',
        '2004-12-10 00:00:00',
        '13800000007',
        'wujie@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        8,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '郑十',
        '1',
        '信息安全',
        'IS2024',
        '2003-01-30 00:00:00',
        '13800000008',
        'zhengshi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        9,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '钱十一',
        '0',
        '计算机科学',
        'CS2023',
        '2002-04-15 00:00:00',
        '13800000009',
        'qianshiyi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        10,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '吴十二',
        '1',
        '软件工程',
        'SE2025',
        '2004-07-25 00:00:00',
        '13800000010',
        'wushier@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        11,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '冯十三',
        '0',
        '电子信息',
        'EE2024',
        '2003-10-12 00:00:00',
        '13800000011',
        'fengshisan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        12,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '陈十四',
        '1',
        '数据科学',
        'DS2023',
        '2002-02-08 00:00:00',
        '13800000012',
        'chenshisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        13,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '褚十五',
        '0',
        '自动化',
        'AU2025',
        '2004-05-17 00:00:00',
        '13800000013',
        'chushiwuwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        14,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '卫十六',
        '1',
        '网络工程',
        'NE2024',
        '2003-08-23 00:00:00',
        '13800000014',
        'weishiliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        15,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '蒋十七',
        '0',
        '人工智能',
        'AI2023',
        '2002-11-29 00:00:00',
        '13800000015',
        'jiangshiqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        16,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '沈十八',
        '1',
        '信息安全',
        'IS2025',
        '2004-03-04 00:00:00',
        '13800000016',
        'shenshiba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        17,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '韩十九',
        '0',
        '计算机科学',
        'CS2024',
        '2003-06-14 00:00:00',
        '13800000017',
        'hanshijiu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        18,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '杨二十',
        '1',
        '软件工程',
        'SE2023',
        '2002-09-18 00:00:00',
        '13800000018',
        'yangershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        19,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '朱二一',
        '0',
        '电子信息',
        'EE2025',
        '2004-12-25 00:00:00',
        '13800000019',
        'zhueri@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        20,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '秦二二',
        '1',
        '数据科学',
        'DS2024',
        '2003-01-20 00:00:00',
        '13800000020',
        'qinershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        21,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '尤二三',
        '0',
        '自动化',
        'AU2023',
        '2002-04-11 00:00:00',
        '13800000021',
        'youersan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        22,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        2,
        '许二四',
        '1',
        '网络工程',
        'NE2025',
        '2004-07-08 00:00:00',
        '13800000022',
        'xuershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        23,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        3,
        '何二五',
        '0',
        '人工智能',
        'AI2024',
        '2003-10-02 00:00:00',
        '13800000023',
        'heershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        24,
        '2025-03-23 13:54:37',
        '2025-03-23 13:54:37',
        100,
        '0',
        1,
        '吕二六',
        '1',
        '信息安全',
        'IS2023',
        '2002-02-18 00:00:00',
        '13800000024',
        'luershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        126,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '施二七',
        '0',
        '数学系',
        'CS2025',
        '2004-05-28 00:00:00',
        '13800000025',
        'shiershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        127,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '张三',
        '0',
        '数学系',
        'CS2025',
        '2002-05-10 00:00:00',
        '13800000001',
        'zhangsan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        128,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '李四',
        '1',
        '数学系',
        'SE2024',
        '2003-08-15 00:00:00',
        '13800000002',
        'lisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        129,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '王五',
        '0',
        '数学系',
        'EE2023',
        '2001-11-20 00:00:00',
        '13800000003',
        'wangwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        130,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '赵六',
        '1',
        '数学系',
        'DS2025',
        '2004-03-05 00:00:00',
        '13800000004',
        'zhaoliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        131,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '孙七',
        '0',
        '数学系',
        'AU2024',
        '2003-06-18 00:00:00',
        '13800000005',
        'sunqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        132,
        '2025-03-24 20:29:50',
        '2025-03-27 17:36:34',
        103,
        '0',
        1,
        '周八皮',
        '1',
        '数学系',
        'NE2023',
        '2002-09-22 00:00:00',
        '13800000006',
        'zhouba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        133,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吴九',
        '0',
        '数学系',
        'AI2025',
        '2004-12-10 00:00:00',
        '13800000007',
        'wujie@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        134,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '郑十',
        '0',
        '数学系',
        'IS2024',
        '2003-01-30 00:00:00',
        '13800000008',
        'zhengshi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        135,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吕二六',
        '1',
        '数学系',
        'IS2023',
        '2002-02-18 00:00:00',
        '13800000024',
        'luershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        136,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '何二五',
        '0',
        '数学系',
        'AI2024',
        '2003-10-02 00:00:00',
        '13800000023',
        'heershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        137,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '许二四',
        '1',
        '数学系',
        'NE2025',
        '2004-07-08 00:00:00',
        '13800000022',
        'xuershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        138,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '尤二三',
        '0',
        '数学系',
        'AU2023',
        '2002-04-11 00:00:00',
        '13800000021',
        'youersan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        139,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '秦二二',
        '1',
        '数学系',
        'DS2024',
        '2003-01-20 00:00:00',
        '13800000020',
        'qinershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        140,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '朱二一',
        '0',
        '数学系',
        'EE2025',
        '2004-12-25 00:00:00',
        '13800000019',
        'zhueri@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        141,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '杨二十',
        '1',
        '数学系',
        'SE2023',
        '2002-09-18 00:00:00',
        '13800000018',
        'yangershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        142,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '韩十九',
        '0',
        '数学系',
        'CS2024',
        '2003-06-14 00:00:00',
        '13800000017',
        'hanshijiu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        143,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '沈十八',
        '1',
        '数学系',
        'IS2025',
        '2004-03-04 00:00:00',
        '13800000016',
        'shenshiba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        144,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '蒋十七',
        '0',
        '数学系',
        'AI2023',
        '2002-11-29 00:00:00',
        '13800000015',
        'jiangshiqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        145,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '卫十六',
        '1',
        '数学系',
        'NE2024',
        '2003-08-23 00:00:00',
        '13800000014',
        'weishiliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        146,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '褚十五',
        '0',
        '数学系',
        'AU2025',
        '2004-05-17 00:00:00',
        '13800000013',
        'chushiwuwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        147,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '陈十四',
        '1',
        '数学系',
        'DS2023',
        '2002-02-08 00:00:00',
        '13800000012',
        'chenshisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        148,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '冯十三',
        '0',
        '数学系',
        'EE2024',
        '2003-10-12 00:00:00',
        '13800000011',
        'fengshisan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        149,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吴十二',
        '1',
        '数学系',
        'SE2025',
        '2004-07-25 00:00:00',
        '13800000010',
        'wushier@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        150,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '钱十一',
        '0',
        '数学系',
        'CS2023',
        '2002-04-15 00:00:00',
        '13800000009',
        'qianshiyi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        151,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '杨二十',
        '1',
        '数学系',
        'SE2023',
        '2002-09-18 00:00:00',
        '13800000018',
        'yangershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        152,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '张三',
        '0',
        '数学系',
        'CS2025',
        '2002-05-10 00:00:00',
        '13800000001',
        'zhangsan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        153,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '秦二二',
        '1',
        '数学系',
        'DS2024',
        '2003-01-20 00:00:00',
        '13800000020',
        'qinershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        154,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '尤二三',
        '0',
        '数学系',
        'AU2023',
        '2002-04-11 00:00:00',
        '13800000021',
        'youersan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        155,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '许二四',
        '1',
        '数学系',
        'NE2025',
        '2004-07-08 00:00:00',
        '13800000022',
        'xuershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        156,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '何二五',
        '0',
        '数学系',
        'AI2024',
        '2003-10-02 00:00:00',
        '13800000023',
        'heershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        157,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吕二六',
        '1',
        '数学系',
        'IS2023',
        '2002-02-18 00:00:00',
        '13800000024',
        'luershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        158,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '施二七',
        '0',
        '数学系',
        'CS2025',
        '2004-05-28 00:00:00',
        '13800000025',
        'shiershi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        159,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '韩十九',
        '0',
        '数学系',
        'CS2024',
        '2003-06-14 00:00:00',
        '13800000017',
        'hanshijiu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        160,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '沈十八',
        '1',
        '数学系',
        'IS2025',
        '2004-03-04 00:00:00',
        '13800000016',
        'shenshiba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        161,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '蒋十七',
        '0',
        '数学系',
        'AI2023',
        '2002-11-29 00:00:00',
        '13800000015',
        'jiangshiqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        162,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '卫十六',
        '1',
        '数学系',
        'NE2024',
        '2003-08-23 00:00:00',
        '13800000014',
        'weishiliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        163,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '褚十五',
        '0',
        '数学系',
        'AU2025',
        '2004-05-17 00:00:00',
        '13800000013',
        'chushiwuwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        164,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '陈十四',
        '1',
        '数学系',
        'DS2023',
        '2002-02-08 00:00:00',
        '13800000012',
        'chenshisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        165,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '冯十三',
        '0',
        '数学系',
        'EE2024',
        '2003-10-12 00:00:00',
        '13800000011',
        'fengshisan@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        166,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吴十二',
        '1',
        '数学系',
        'SE2025',
        '2004-07-25 00:00:00',
        '13800000010',
        'wushier@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        167,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '钱十一',
        '0',
        '数学系',
        'CS2023',
        '2002-04-15 00:00:00',
        '13800000009',
        'qianshiyi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        168,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '郑十',
        '1',
        '数学系',
        'IS2024',
        '2003-01-30 00:00:00',
        '13800000008',
        'zhengshi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        169,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '吴九',
        '0',
        '数学系',
        'AI2025',
        '2004-12-10 00:00:00',
        '13800000007',
        'wujie@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        170,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '周八',
        '1',
        '数学系',
        'NE2023',
        '2002-09-22 00:00:00',
        '13800000006',
        'zhouba@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        171,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '孙七',
        '0',
        '数学系',
        'AU2024',
        '2003-06-18 00:00:00',
        '13800000005',
        'sunqi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        172,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '赵六',
        '1',
        '数学系',
        'DS2025',
        '2004-03-05 00:00:00',
        '13800000004',
        'zhaoliu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        173,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '王五',
        '0',
        '数学系',
        'EE2023',
        '2001-11-20 00:00:00',
        '13800000003',
        'wangwu@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        174,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '李四',
        '1',
        '数学系',
        'SE2024',
        '2003-08-15 00:00:00',
        '13800000002',
        'lisi@example.com'
    );

INSERT INTO
    `student_info` (
        `id`,
        `create_time`,
        `update_time`,
        `dept_id`,
        `del_flag`,
        `create_by`,
        `name`,
        `gender`,
        `major`,
        `class_name`,
        `date_of_birth`,
        `phone_number`,
        `email`
    )
VALUES (
        175,
        '2025-03-24 20:29:50',
        '2025-03-24 20:29:50',
        103,
        '0',
        1,
        '朱二一',
        '0',
        '数学系',
        'EE2025',
        '2004-12-25 00:00:00',
        '13800000019',
        'zhueri@example.com'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
    `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
    `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
    `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
    `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
    `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '主框架页-默认皮肤样式名称',
        'sys.index.skinName',
        'skin-blue',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'
    );

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '用户管理-账号初始密码',
        'sys.user.initPassword',
        '123456',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '初始化密码 123456'
    );

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        '主框架页-侧边栏主题',
        'sys.index.sideTheme',
        'theme-dark',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '深色主题theme-dark，浅色主题theme-light'
    );

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        4,
        '账号自助-验证码开关',
        'sys.account.captchaEnabled',
        'true',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '是否开启验证码功能（true开启，false关闭）'
    );

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        5,
        '账号自助-是否开启用户注册功能',
        'sys.account.registerUser',
        'false',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '是否开启注册用户功能（true开启，false关闭）'
    );

INSERT INTO
    `sys_config` (
        `config_id`,
        `config_name`,
        `config_key`,
        `config_value`,
        `config_type`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        6,
        '用户登录-黑名单列表',
        'sys.login.blackIPList',
        '',
        'Y',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
    `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
    `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
    `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
    `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
    `order_num` int DEFAULT '0' COMMENT '显示顺序',
    `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
    `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
    `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        100,
        0,
        '0',
        '集团总公司',
        0,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        101,
        100,
        '0,100',
        '深圳分公司',
        1,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        102,
        100,
        '0,100',
        '长沙分公司',
        2,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        103,
        101,
        '0,100,101',
        '研发部门',
        1,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        104,
        101,
        '0,100,101',
        '市场部门',
        2,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        105,
        101,
        '0,100,101',
        '测试部门',
        3,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        106,
        101,
        '0,100,101',
        '财务部门',
        4,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        107,
        101,
        '0,100,101',
        '运维部门',
        5,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        108,
        102,
        '0,100,102',
        '市场部门',
        1,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        109,
        102,
        '0,100,102',
        '财务部门',
        2,
        '年糕',
        '15888888888',
        'niangao@qq.com',
        '0',
        '2',
        'admin',
        '2024-11-13 14:12:02',
        NULL,
        NULL
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        200,
        100,
        '0,100',
        '托管事业部',
        0,
        NULL,
        NULL,
        NULL,
        '0',
        '0',
        'admin',
        '2024-12-14 16:42:36',
        'admin',
        '2024-12-14 16:42:36'
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        201,
        200,
        '0,100,200',
        '项目一部',
        0,
        NULL,
        NULL,
        NULL,
        '0',
        '0',
        'admin',
        '2024-12-14 16:42:47',
        'admin',
        '2024-12-14 16:42:47'
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        202,
        200,
        '0,100,200',
        '项目二部',
        0,
        NULL,
        NULL,
        NULL,
        '0',
        '0',
        'admin',
        '2024-12-14 16:42:55',
        'admin',
        '2024-12-14 16:42:55'
    );

INSERT INTO
    `sys_dept` (
        `dept_id`,
        `parent_id`,
        `ancestors`,
        `dept_name`,
        `order_num`,
        `leader`,
        `phone`,
        `email`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`
    )
VALUES (
        203,
        201,
        '0,100,200,201',
        '项目一组',
        1,
        NULL,
        NULL,
        NULL,
        '0',
        '0',
        'admin',
        '2025-02-20 13:08:52',
        'admin',
        '2025-02-20 13:08:52'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
    `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
    `dict_sort` int DEFAULT '0' COMMENT '字典排序',
    `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
    `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
    `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
    `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
    `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
    `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        1,
        '男',
        '0',
        'sys_user_sex',
        '',
        '',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '性别男'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        2,
        '女',
        '1',
        'sys_user_sex',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '性别女'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        3,
        '未知',
        '2',
        'sys_user_sex',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '性别未知'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        4,
        1,
        '显示',
        '0',
        'sys_show_hide',
        '',
        'primary',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '显示菜单'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        5,
        2,
        '隐藏',
        '1',
        'sys_show_hide',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '隐藏菜单'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        6,
        1,
        '正常',
        '0',
        'sys_normal_disable',
        '',
        'primary',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '正常状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        7,
        2,
        '停用',
        '1',
        'sys_normal_disable',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '停用状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        8,
        1,
        '正常',
        '0',
        'sys_job_status',
        '',
        'primary',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '正常状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        9,
        2,
        '暂停',
        '1',
        'sys_job_status',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '停用状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        10,
        1,
        '默认',
        'default',
        'sys_job_group',
        '',
        '',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '默认分组'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        11,
        2,
        '数据库',
        'sqlalchemy',
        'sys_job_group',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '数据库分组'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        12,
        3,
        'redis',
        'redis',
        'sys_job_group',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        'reids分组'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        13,
        1,
        '默认',
        'default',
        'sys_job_executor',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '线程池'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        14,
        2,
        '进程池',
        'processpool',
        'sys_job_executor',
        '',
        '',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '进程池'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        15,
        1,
        '是',
        'Y',
        'sys_yes_no',
        '',
        'primary',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统默认是'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        16,
        2,
        '否',
        'N',
        'sys_yes_no',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统默认否'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        17,
        1,
        '通知',
        '1',
        'sys_notice_type',
        '',
        'warning',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '通知'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        18,
        2,
        '公告',
        '2',
        'sys_notice_type',
        '',
        'success',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '公告'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        19,
        1,
        '正常',
        '0',
        'sys_notice_status',
        '',
        'primary',
        'Y',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '正常状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        20,
        2,
        '关闭',
        '1',
        'sys_notice_status',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '关闭状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        21,
        99,
        '其他',
        '0',
        'sys_oper_type',
        '',
        'info',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '其他操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        22,
        1,
        '新增',
        '1',
        'sys_oper_type',
        '',
        'info',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '新增操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        23,
        2,
        '修改',
        '2',
        'sys_oper_type',
        '',
        'info',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '修改操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        24,
        3,
        '删除',
        '3',
        'sys_oper_type',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '删除操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        25,
        4,
        '授权',
        '4',
        'sys_oper_type',
        '',
        'primary',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '授权操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        26,
        5,
        '导出',
        '5',
        'sys_oper_type',
        '',
        'warning',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '导出操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        27,
        6,
        '导入',
        '6',
        'sys_oper_type',
        '',
        'warning',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '导入操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        28,
        7,
        '强退',
        '7',
        'sys_oper_type',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '强退操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        29,
        8,
        '生成代码',
        '8',
        'sys_oper_type',
        '',
        'warning',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '生成操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        30,
        9,
        '清空数据',
        '9',
        'sys_oper_type',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '清空操作'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        31,
        1,
        '成功',
        '0',
        'sys_common_status',
        '',
        'primary',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '正常状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        32,
        2,
        '失败',
        '1',
        'sys_common_status',
        '',
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '停用状态'
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        100,
        0,
        '已上架',
        '1',
        'news_status',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2024-11-30 13:50:32',
        'admin',
        '2024-11-30 13:50:32',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        101,
        0,
        '下架',
        '0',
        'news_status',
        NULL,
        'danger',
        'N',
        '0',
        'admin',
        '2024-11-30 13:50:55',
        'admin',
        '2024-11-30 13:50:55',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        102,
        0,
        '免费',
        '0',
        'new_charge',
        NULL,
        'info',
        'N',
        '0',
        'admin',
        '2024-11-30 13:52:13',
        'admin',
        '2024-11-30 13:52:13',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        103,
        0,
        '收费',
        '1',
        'new_charge',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2024-11-30 13:52:25',
        'admin',
        '2024-11-30 13:52:25',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        104,
        0,
        '置顶',
        '1',
        'news_top',
        NULL,
        'primary',
        'N',
        '0',
        'admin',
        '2024-11-30 13:56:24',
        'admin',
        '2024-11-30 13:56:32',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        105,
        0,
        '不置顶',
        '0',
        'news_top',
        NULL,
        'info',
        'N',
        '0',
        'admin',
        '2024-11-30 13:56:50',
        'admin',
        '2024-11-30 13:56:50',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        106,
        0,
        '未处理',
        '0',
        'cooperation_status',
        NULL,
        'danger',
        'N',
        '0',
        'admin',
        '2024-12-24 14:27:34',
        'admin',
        '2024-12-24 14:28:40',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        107,
        0,
        '已处理',
        '1',
        'cooperation_status',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2024-12-24 14:28:04',
        'admin',
        '2024-12-24 14:28:04',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        108,
        0,
        '已废弃',
        '2',
        'cooperation_status',
        NULL,
        'info',
        'N',
        '0',
        'admin',
        '2024-12-24 14:28:24',
        'admin',
        '2024-12-24 14:28:24',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        109,
        0,
        '越野车',
        '1',
        'car_type',
        NULL,
        'primary',
        'N',
        '0',
        'admin',
        '2025-01-17 14:12:25',
        'admin',
        '2025-01-17 14:12:25',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        110,
        0,
        '小汽车',
        '2',
        'car_type',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2025-01-17 14:12:48',
        'admin',
        '2025-01-17 14:12:48',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        111,
        0,
        '是',
        '1',
        'sys_01_yes_no',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2025-02-11 15:14:16',
        'admin',
        '2025-02-11 15:14:16',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        112,
        0,
        '否',
        '0',
        'sys_01_yes_no',
        NULL,
        'warning',
        'N',
        '0',
        'admin',
        '2025-02-11 15:15:26',
        'admin',
        '2025-02-11 15:15:26',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        113,
        0,
        '左',
        'left',
        'field_align',
        NULL,
        'primary',
        'N',
        '0',
        'admin',
        '2025-02-11 15:19:41',
        'admin',
        '2025-02-11 15:19:41',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        114,
        0,
        '右',
        'right',
        'field_align',
        NULL,
        'success',
        'N',
        '0',
        'admin',
        '2025-02-11 15:20:00',
        'admin',
        '2025-02-11 15:20:00',
        NULL
    );

INSERT INTO
    `sys_dict_data` (
        `dict_code`,
        `dict_sort`,
        `dict_label`,
        `dict_value`,
        `dict_type`,
        `css_class`,
        `list_class`,
        `is_default`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        115,
        0,
        '中',
        'center',
        'field_align',
        NULL,
        'danger',
        'N',
        '0',
        'admin',
        '2025-02-11 15:20:16',
        'admin',
        '2025-02-11 15:20:16',
        NULL
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
    `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
    `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
    `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1停用）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`dict_id`) USING BTREE,
    UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '用户性别',
        'sys_user_sex',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        'admin',
        '2025-02-19 01:45:55',
        '用户性别列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '菜单状态',
        'sys_show_hide',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '菜单状态列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        '系统开关',
        'sys_normal_disable',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统开关列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        4,
        '任务状态',
        'sys_job_status',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '任务状态列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        5,
        '任务分组',
        'sys_job_group',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '任务分组列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        6,
        '任务执行器',
        'sys_job_executor',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '任务执行器列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        7,
        '系统是否',
        'sys_yes_no',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统是否列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        8,
        '通知类型',
        'sys_notice_type',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '通知类型列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        9,
        '通知状态',
        'sys_notice_status',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '通知状态列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        10,
        '操作类型',
        'sys_oper_type',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '操作类型列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        11,
        '系统状态',
        'sys_common_status',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '登录状态列表'
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        101,
        'test',
        'test',
        '0',
        'admin',
        '2024-11-16 10:10:04',
        'admin',
        '2024-11-16 10:10:04',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        102,
        '新闻上架状态',
        'news_status',
        '0',
        'admin',
        '2024-11-30 13:49:17',
        'admin',
        '2024-11-30 13:49:17',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        103,
        '新闻收费状态',
        'new_charge',
        '0',
        'admin',
        '2024-11-30 13:51:33',
        'admin',
        '2024-11-30 13:51:33',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        104,
        '新闻置顶',
        'news_top',
        '0',
        'admin',
        '2024-11-30 13:53:04',
        'admin',
        '2024-11-30 13:53:04',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        105,
        '合作意向状态',
        'cooperation_status',
        '0',
        'admin',
        '2024-12-24 14:26:48',
        'admin',
        '2024-12-24 14:26:48',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        106,
        '车辆类型',
        'car_type',
        '0',
        'admin',
        '2025-01-17 14:11:44',
        'admin',
        '2025-01-17 14:11:44',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        107,
        '0-1是否',
        'sys_01_yes_no',
        '0',
        'admin',
        '2025-02-11 15:13:49',
        'admin',
        '2025-02-11 15:13:49',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        108,
        '字段居中类型',
        'field_align',
        '0',
        'admin',
        '2025-02-11 15:19:15',
        'admin',
        '2025-02-11 15:19:15',
        NULL
    );

INSERT INTO
    `sys_dict_type` (
        `dict_id`,
        `dict_name`,
        `dict_type`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        109,
        '属性',
        'int',
        '0',
        'admin',
        '2025-02-19 02:46:43',
        'admin',
        '2025-02-19 02:46:43',
        NULL
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_form
-- ----------------------------
DROP TABLE IF EXISTS `sys_form`;

CREATE TABLE `sys_form` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志',
    `create_by` int NOT NULL COMMENT '创建者',
    `dept_id` int NOT NULL COMMENT '部门id',
    `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单名称',
    `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单代码',
    `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段配置',
    `form_conf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单配置',
    `generate_conf` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '生成配置',
    `drawing_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段列表',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统表单';

-- ----------------------------
-- Records of sys_form
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_form` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `content`,
        `form_data`,
        `form_conf`,
        `generate_conf`,
        `drawing_list`
    )
VALUES (
        22,
        '2025-03-08 16:15:08',
        '2025-03-08 16:15:08',
        '0',
        1,
        103,
        '求职意向调查',
        '<template>\n  <div class=\"app-container\">\n    <el-form ref=\"formRef\" :model=\"formData\" :rules=\"rules\" size=\"default\" label-width=\"100px\">\n      <el-form-item label=\"手机号\" prop=\"mobile\">\n        <el-input v-model=\"formData.mobile\" placeholder=\"请输入手机号\" :maxlength=\"11\" show-word-limit clearable\n          prefix-icon=\'Cellphone\' :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"姓名\" prop=\"name\">\n        <el-input v-model=\"formData.name\" type=\"text\" placeholder=\"请输入姓名\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"年龄\" prop=\"age\">\n        <el-input v-model=\"formData.age\" type=\"text\" placeholder=\"请输入年龄\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"期望薪资\" prop=\"salary\">\n        <el-input v-model=\"formData.salary\" type=\"text\" placeholder=\"请输入期望薪资\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"入职时间\" prop=\"joinDate\">\n        <el-date-picker v-model=\"formData.joinDate\" format=\"YYYY-MM-DD\" value-format=\"YYYY-MM-DD\"\n          :style=\"{width: \'100%\'}\" placeholder=\"请选择入职时间\" clearable></el-date-picker>\n      </el-form-item>\n      <el-form-item label=\"下拉选择\" prop=\"field101\">\n        <el-select v-model=\"formData.field101\" placeholder=\"请选择下拉选择\" clearable :style=\"{width: \'100%\'}\">\n          <el-option v-for=\"(item, index) in field101Options\" :key=\"index\" :label=\"item.label\"\n            :value=\"item.value\" :disabled=\"item.disabled\"></el-option>\n        </el-select>\n      </el-form-item>\n      <el-form-item>\n        <el-button type=\"primary\" @click=\"submitForm\">提交</el-button>\n        <el-button @click=\"resetForm\">重置</el-button>\n      </el-form-item>\n    </el-form>\n  </div>\n</template>\n<script setup>\nimport {\n  addForm_data\n}\nfrom \'@/api/system/form_data\'\nconst {\n  proxy\n} = getCurrentInstance()\nconst formRef = ref()\nconst data = reactive({\n  formData: {\n    mobile: \'\',\n    name: undefined,\n    age: undefined,\n    salary: undefined,\n    joinDate: null,\n    field101: undefined,\n  },\n  rules: {\n    mobile: [{\n      required: true,\n      message: \'请输入手机号\',\n      trigger: \'blur\'\n    }, {\n      pattern: new RegExp(/^1(3|4|5|7|8|9)\\d{9}$/),\n      message: \'手机号格式错误\',\n      trigger: \'blur\'\n    }],\n    name: [{\n      required: true,\n      message: \'请输入姓名\',\n      trigger: \'blur\'\n    }],\n    age: [{\n      required: true,\n      message: \'请输入年龄\',\n      trigger: \'blur\'\n    }],\n    salary: [{\n      required: true,\n      message: \'请输入期望薪资\',\n      trigger: \'blur\'\n    }],\n    joinDate: [{\n      required: true,\n      message: \'请选择入职时间\',\n      trigger: \'change\'\n    }],\n    field101: [{\n      required: true,\n      message: \'请选择下拉选择\',\n      trigger: \'change\'\n    }],\n  }\n})\nconst {\n  formData,\n  rules\n} = toRefs(data)\nconst field101Options = ref([{\n  \"label\": \"选项一\",\n  \"value\": 1\n}, {\n  \"label\": \"选项二\",\n  \"value\": 2\n}])\n/**\n * @name: 表单提交\n * @description: 表单提交方法\n * @return {*}\n */\nfunction submitForm() {\n  formRef.value.validate((valid) => {\n    if (!valid) return\n    // 提交表单\n    let tempFormData = JSON.stringfy(formData)\n    let params = {\n      formName: \'求职意向调查\',\n      formData: tempFormData\n    }\n    addForm_data(params).then((response) => {\n      proxy.$modal.msgSuccess(\'新增成功\')\n      resetForm()\n    })\n  })\n}\n/**\n * @name: 表单重置\n * @description: 表单重置方法\n * @return {*}\n */\nfunction resetForm() {\n  formRef.value.resetFields()\n}\n\n</script>\n<style>\n</style>\n',
        '{\"fields\":[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741421612633,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741421625219,\"layout\":\"colFormItem\",\"vModel\":\"age\"},{\"label\":\"期望薪资\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入期望薪资\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":103,\"renderKey\":1741421648331,\"layout\":\"colFormItem\",\"vModel\":\"salary\"},{\"label\":\"入职时间\",\"tag\":\"el-date-picker\",\"tagIcon\":\"date\",\"placeholder\":\"请选择入职时间\",\"defaultValue\":null,\"type\":\"date\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"disabled\":false,\"clearable\":true,\"required\":true,\"format\":\"YYYY-MM-DD\",\"value-format\":\"YYYY-MM-DD\",\"readonly\":false,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/date-picker\",\"formId\":105,\"renderKey\":1741421688014,\"layout\":\"colFormItem\",\"vModel\":\"joinDate\"},{\"label\":\"下拉选择\",\"tag\":\"el-select\",\"tagIcon\":\"select\",\"placeholder\":\"请选择下拉选择\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"disabled\":false,\"required\":true,\"filterable\":false,\"multiple\":false,\"options\":[{\"label\":\"选项一\",\"value\":1},{\"label\":\"选项二\",\"value\":2}],\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/select\",\"formId\":101,\"renderKey\":1741424187717,\"layout\":\"colFormItem\",\"vModel\":\"field101\"}],\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"求职意向调查\"}',
        '{\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"求职意向调查\"}',
        '{\"type\":\"file\"}',
        '[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741421612633,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741421625219,\"layout\":\"colFormItem\",\"vModel\":\"age\"},{\"label\":\"期望薪资\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入期望薪资\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":103,\"renderKey\":1741421648331,\"layout\":\"colFormItem\",\"vModel\":\"salary\"},{\"label\":\"入职时间\",\"tag\":\"el-date-picker\",\"tagIcon\":\"date\",\"placeholder\":\"请选择入职时间\",\"defaultValue\":null,\"type\":\"date\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"disabled\":false,\"clearable\":true,\"required\":true,\"format\":\"YYYY-MM-DD\",\"value-format\":\"YYYY-MM-DD\",\"readonly\":false,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/date-picker\",\"formId\":105,\"renderKey\":1741421688014,\"layout\":\"colFormItem\",\"vModel\":\"joinDate\"},{\"label\":\"下拉选择\",\"tag\":\"el-select\",\"tagIcon\":\"select\",\"placeholder\":\"请选择下拉选择\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"disabled\":false,\"required\":true,\"filterable\":false,\"multiple\":false,\"options\":[{\"label\":\"选项一\",\"value\":1},{\"label\":\"选项二\",\"value\":2}],\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/select\",\"formId\":101,\"renderKey\":1741424187717,\"layout\":\"colFormItem\",\"vModel\":\"field101\"}]'
    );

INSERT INTO
    `sys_form` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `content`,
        `form_data`,
        `form_conf`,
        `generate_conf`,
        `drawing_list`
    )
VALUES (
        23,
        '2025-03-10 09:34:42',
        '2025-03-10 09:34:42',
        '0',
        1,
        103,
        '用户信息统计表',
        '<template>\n  <div class=\"app-container\">\n    <el-form ref=\"formRef\" :model=\"formData\" :rules=\"rules\" size=\"default\" label-width=\"100px\">\n      <el-form-item label=\"手机号\" prop=\"mobile\">\n        <el-input v-model=\"formData.mobile\" placeholder=\"请输入手机号\" :maxlength=\"11\" show-word-limit clearable\n          prefix-icon=\'Cellphone\' :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"姓名\" prop=\"name\">\n        <el-input v-model=\"formData.name\" type=\"text\" placeholder=\"请输入姓名\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"年龄\" prop=\"age\">\n        <el-input v-model=\"formData.age\" type=\"text\" placeholder=\"请输入年龄\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item>\n        <el-button type=\"primary\" @click=\"submitForm\">提交</el-button>\n        <el-button @click=\"resetForm\">重置</el-button>\n      </el-form-item>\n    </el-form>\n  </div>\n</template>\n<script setup>\nimport {\n  addForm_data\n}\nfrom \'@/api/system/form_data\'\nconst {\n  proxy\n} = getCurrentInstance()\nconst formRef = ref()\nconst data = reactive({\n  formData: {\n    mobile: \'\',\n    name: undefined,\n    age: undefined,\n  },\n  rules: {\n    mobile: [{\n      required: true,\n      message: \'请输入手机号\',\n      trigger: \'blur\'\n    }, {\n      pattern: new RegExp(/^1(3|4|5|7|8|9)\\d{9}$/),\n      message: \'手机号格式错误\',\n      trigger: \'blur\'\n    }],\n    name: [{\n      required: true,\n      message: \'请输入姓名\',\n      trigger: \'blur\'\n    }],\n    age: [{\n      required: true,\n      message: \'请输入年龄\',\n      trigger: \'blur\'\n    }],\n  }\n})\nconst {\n  formData,\n  rules\n} = toRefs(data)\n/**\n * @name: 表单提交\n * @description: 表单提交方法\n * @return {*}\n */\nfunction submitForm() {\n  formRef.value.validate((valid) => {\n    if (!valid) return\n    // 提交表单\n    let tempFormData = JSON.stringify(formData.value)\n    let params = {\n      formName: \'用户信息统计表\',\n      formData: tempFormData\n    }\n    addForm_data(params).then((response) => {\n      proxy.$modal.msgSuccess(\'新增成功\')\n      resetForm()\n    })\n  })\n}\n/**\n * @name: 表单重置\n * @description: 表单重置方法\n * @return {*}\n */\nfunction resetForm() {\n  formRef.value.resetFields()\n}\n\n</script>\n<style>\n</style>\n',
        '{\"fields\":[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741570446779,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741570462816,\"layout\":\"colFormItem\",\"vModel\":\"age\"}],\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"用户信息统计表\"}',
        '{\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"用户信息统计表\"}',
        '{\"type\":\"file\"}',
        '[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741570446779,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741570462816,\"layout\":\"colFormItem\",\"vModel\":\"age\"}]'
    );

INSERT INTO
    `sys_form` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `content`,
        `form_data`,
        `form_conf`,
        `generate_conf`,
        `drawing_list`
    )
VALUES (
        24,
        '2025-03-10 09:36:12',
        '2025-03-10 09:36:12',
        '0',
        1,
        103,
        '测试表单名称',
        '<template>\n  <div class=\"app-container\">\n    <el-form ref=\"formRef\" :model=\"formData\" :rules=\"rules\" size=\"default\" label-width=\"100px\">\n      <el-form-item label=\"手机号\" prop=\"mobile\">\n        <el-input v-model=\"formData.mobile\" placeholder=\"请输入手机号\" :maxlength=\"11\" show-word-limit clearable\n          prefix-icon=\'Cellphone\' :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"单行文本\" prop=\"field101\">\n        <el-input v-model=\"formData.field101\" type=\"text\" placeholder=\"请输入单行文本\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"多行文本\" prop=\"field102\">\n        <el-input v-model=\"formData.field102\" type=\"textarea\" placeholder=\"请输入多行文本\"\n          :autosize=\"{minRows: 4, maxRows: 4}\" :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"级联选择\" prop=\"field103\">\n        <el-cascader v-model=\"formData.field103\" :options=\"field103Options\" :props=\"field103Props\"\n          :style=\"{width: \'100%\'}\" placeholder=\"请选择级联选择\" clearable></el-cascader>\n      </el-form-item>\n      <el-row gutter=\"15\">\n        <el-form-item label=\"单行文本\" prop=\"field105\">\n          <el-input v-model=\"formData.field105\" type=\"text\" placeholder=\"请输入单行文本\" clearable\n            :style=\"{width: \'100%\'}\"></el-input>\n        </el-form-item>\n        <el-form-item label=\"按钮\" prop=\"field107\">\n          <el-button type=\"primary\" icon=\"Search\" size=\"default\"> 主要按钮 </el-button>\n        </el-form-item>\n        <el-form-item label=\"单行文本\" prop=\"field106\">\n          <el-input v-model=\"formData.field106\" type=\"text\" placeholder=\"请输入单行文本\" clearable\n            :style=\"{width: \'100%\'}\"></el-input>\n        </el-form-item>\n      </el-row>\n      <el-form-item>\n        <el-button type=\"primary\" @click=\"submitForm\">提交</el-button>\n        <el-button @click=\"resetForm\">重置</el-button>\n      </el-form-item>\n    </el-form>\n  </div>\n</template>\n<script setup>\nimport {\n  addForm_data\n}\nfrom \'@/api/system/form_data\'\nconst {\n  proxy\n} = getCurrentInstance()\nconst formRef = ref()\nconst data = reactive({\n  formData: {\n    mobile: \'\',\n    field101: undefined,\n    field102: undefined,\n    field103: [],\n    field105: undefined,\n    field107: undefined,\n    field106: undefined,\n  },\n  rules: {\n    mobile: [{\n      required: true,\n      message: \'请输入手机号\',\n      trigger: \'blur\'\n    }, {\n      pattern: new RegExp(/^1(3|4|5|7|8|9)\\d{9}$/),\n      message: \'手机号格式错误\',\n      trigger: \'blur\'\n    }],\n    field101: [{\n      required: true,\n      message: \'请输入单行文本\',\n      trigger: \'blur\'\n    }],\n    field102: [{\n      required: true,\n      message: \'请输入多行文本\',\n      trigger: \'blur\'\n    }],\n    field103: [{\n      required: true,\n      type: \'array\',\n      message: \'请至少选择一个field103\',\n      trigger: \'change\'\n    }],\n    field105: [{\n      required: true,\n      message: \'请输入单行文本\',\n      trigger: \'blur\'\n    }],\n    field106: [{\n      required: true,\n      message: \'请输入单行文本\',\n      trigger: \'blur\'\n    }],\n  }\n})\nconst {\n  formData,\n  rules\n} = toRefs(data)\nconst field103Options = ref([])\n// props设置\nconst field103Props = ref({\n  \"multiple\": false\n})\n\nfunction getField103Options() {\n  // TODO 发起请求获取数据\n  field103Options.value\n}\n/**\n * @name: 表单提交\n * @description: 表单提交方法\n * @return {*}\n */\nfunction submitForm() {\n  formRef.value.validate((valid) => {\n    if (!valid) return\n    // 提交表单\n    let tempFormData = JSON.stringify(formData.value)\n    let params = {\n      formName: \'测试表单名称\',\n      formData: tempFormData\n    }\n    addForm_data(params).then((response) => {\n      proxy.$modal.msgSuccess(\'新增成功\')\n      resetForm()\n    })\n  })\n}\n/**\n * @name: 表单重置\n * @description: 表单重置方法\n * @return {*}\n */\nfunction resetForm() {\n  formRef.value.resetFields()\n}\n\n</script>\n<style>\n</style>\n',
        '{\"fields\":[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741570522642,\"layout\":\"colFormItem\",\"vModel\":\"field101\"},{\"label\":\"多行文本\",\"tag\":\"el-input\",\"tagIcon\":\"textarea\",\"type\":\"textarea\",\"placeholder\":\"请输入多行文本\",\"span\":24,\"labelWidth\":null,\"autosize\":{\"minRows\":4,\"maxRows\":4},\"style\":{\"width\":\"100%\"},\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741570524174,\"layout\":\"colFormItem\",\"vModel\":\"field102\"},{\"label\":\"级联选择\",\"tag\":\"el-cascader\",\"tagIcon\":\"cascader\",\"placeholder\":\"请选择级联选择\",\"defaultValue\":[],\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"props\":{\"props\":{\"multiple\":false}},\"show-all-levels\":true,\"disabled\":false,\"clearable\":true,\"filterable\":false,\"required\":true,\"options\":[{\"id\":1,\"value\":1,\"label\":\"选项1\",\"children\":[{\"id\":2,\"value\":2,\"label\":\"选项1-1\"}]}],\"dataType\":\"dynamic\",\"labelKey\":\"label\",\"valueKey\":\"value\",\"childrenKey\":\"children\",\"separator\":\"/\",\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/cascader\",\"formId\":103,\"renderKey\":1741570526455,\"layout\":\"colFormItem\",\"vModel\":\"field103\"},{\"layout\":\"rowFormItem\",\"tagIcon\":\"row\",\"type\":\"default\",\"justify\":\"start\",\"align\":\"top\",\"layoutTree\":true,\"children\":[{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":105,\"renderKey\":1741570535124,\"layout\":\"colFormItem\",\"vModel\":\"field105\"},{\"layout\":\"colFormItem\",\"label\":\"按钮\",\"changeTag\":true,\"labelWidth\":null,\"tag\":\"el-button\",\"tagIcon\":\"button\",\"span\":24,\"default\":\"主要按钮\",\"type\":\"primary\",\"icon\":\"Search\",\"size\":\"default\",\"disabled\":false,\"document\":\"https://element-plus.org/zh-CN/component/button\",\"formId\":107,\"renderKey\":1741570542355,\"vModel\":\"field107\"},{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":106,\"renderKey\":1741570538181,\"layout\":\"colFormItem\",\"vModel\":\"field106\"}],\"document\":\"https://element-plus.org/zh-CN/component/layout\",\"formId\":104,\"span\":24,\"renderKey\":1741570532391,\"componentName\":\"row104\",\"gutter\":15}],\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"测试表单名称\"}',
        '{\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"测试表单名称\"}',
        '{\"type\":\"file\"}',
        '[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741570522642,\"layout\":\"colFormItem\",\"vModel\":\"field101\"},{\"label\":\"多行文本\",\"tag\":\"el-input\",\"tagIcon\":\"textarea\",\"type\":\"textarea\",\"placeholder\":\"请输入多行文本\",\"span\":24,\"labelWidth\":null,\"autosize\":{\"minRows\":4,\"maxRows\":4},\"style\":{\"width\":\"100%\"},\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741570524174,\"layout\":\"colFormItem\",\"vModel\":\"field102\"},{\"label\":\"级联选择\",\"tag\":\"el-cascader\",\"tagIcon\":\"cascader\",\"placeholder\":\"请选择级联选择\",\"defaultValue\":[],\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"props\":{\"props\":{\"multiple\":false}},\"show-all-levels\":true,\"disabled\":false,\"clearable\":true,\"filterable\":false,\"required\":true,\"options\":[{\"id\":1,\"value\":1,\"label\":\"选项1\",\"children\":[{\"id\":2,\"value\":2,\"label\":\"选项1-1\"}]}],\"dataType\":\"dynamic\",\"labelKey\":\"label\",\"valueKey\":\"value\",\"childrenKey\":\"children\",\"separator\":\"/\",\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/cascader\",\"formId\":103,\"renderKey\":1741570526455,\"layout\":\"colFormItem\",\"vModel\":\"field103\"},{\"layout\":\"rowFormItem\",\"tagIcon\":\"row\",\"type\":\"default\",\"justify\":\"start\",\"align\":\"top\",\"layoutTree\":true,\"children\":[{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":105,\"renderKey\":1741570535124,\"layout\":\"colFormItem\",\"vModel\":\"field105\"},{\"layout\":\"colFormItem\",\"label\":\"按钮\",\"changeTag\":true,\"labelWidth\":null,\"tag\":\"el-button\",\"tagIcon\":\"button\",\"span\":24,\"default\":\"主要按钮\",\"type\":\"primary\",\"icon\":\"Search\",\"size\":\"default\",\"disabled\":false,\"document\":\"https://element-plus.org/zh-CN/component/button\",\"formId\":107,\"renderKey\":1741570542355,\"vModel\":\"field107\"},{\"label\":\"单行文本\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入单行文本\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":106,\"renderKey\":1741570538181,\"layout\":\"colFormItem\",\"vModel\":\"field106\"}],\"document\":\"https://element-plus.org/zh-CN/component/layout\",\"formId\":104,\"span\":24,\"renderKey\":1741570532391,\"componentName\":\"row104\",\"gutter\":15}]'
    );

INSERT INTO
    `sys_form` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `name`,
        `content`,
        `form_data`,
        `form_conf`,
        `generate_conf`,
        `drawing_list`
    )
VALUES (
        25,
        '2025-03-14 23:22:23',
        '2025-03-14 23:22:23',
        '0',
        1,
        103,
        '薪资期望表单',
        '<template>\n  <div class=\"app-container\">\n    <el-form ref=\"formRef\" :model=\"formData\" :rules=\"rules\" size=\"default\" label-width=\"100px\">\n      <el-form-item label=\"手机号\" prop=\"mobile\">\n        <el-input v-model=\"formData.mobile\" placeholder=\"请输入手机号\" :maxlength=\"11\" show-word-limit clearable\n          prefix-icon=\'Cellphone\' :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"姓名\" prop=\"name\">\n        <el-input v-model=\"formData.name\" type=\"text\" placeholder=\"请输入姓名\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"年龄\" prop=\"age\">\n        <el-input v-model=\"formData.age\" type=\"text\" placeholder=\"请输入年龄\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"期望薪资\" prop=\"salary\">\n        <el-input v-model=\"formData.salary\" type=\"text\" placeholder=\"请输入期望薪资\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item label=\"入职时间\" prop=\"joinDate\">\n        <el-input v-model=\"formData.joinDate\" type=\"text\" placeholder=\"请输入入职时间\" clearable\n          :style=\"{width: \'100%\'}\"></el-input>\n      </el-form-item>\n      <el-form-item>\n        <el-button type=\"primary\" @click=\"submitForm\">提交</el-button>\n        <el-button @click=\"resetForm\">重置</el-button>\n      </el-form-item>\n    </el-form>\n  </div>\n</template>\n<script setup>\nimport {\n  addForm_data\n}\nfrom \'@/api/system/form_data\'\nconst {\n  proxy\n} = getCurrentInstance()\nconst formRef = ref()\nconst data = reactive({\n  formData: {\n    mobile: \'\',\n    name: undefined,\n    age: undefined,\n    salary: undefined,\n    joinDate: undefined,\n  },\n  rules: {\n    mobile: [{\n      required: true,\n      message: \'请输入手机号\',\n      trigger: \'blur\'\n    }, {\n      pattern: new RegExp(/^1(3|4|5|7|8|9)\\d{9}$/),\n      message: \'手机号格式错误\',\n      trigger: \'blur\'\n    }],\n    name: [{\n      required: true,\n      message: \'请输入姓名\',\n      trigger: \'blur\'\n    }],\n    age: [{\n      required: true,\n      message: \'请输入年龄\',\n      trigger: \'blur\'\n    }],\n    salary: [{\n      required: true,\n      message: \'请输入期望薪资\',\n      trigger: \'blur\'\n    }],\n    joinDate: [{\n      required: true,\n      message: \'请输入入职时间\',\n      trigger: \'blur\'\n    }],\n  }\n})\nconst {\n  formData,\n  rules\n} = toRefs(data)\n/**\n * @name: 表单提交\n * @description: 表单提交方法\n * @return {*}\n */\nfunction submitForm() {\n  formRef.value.validate((valid) => {\n    if (!valid) return\n    // 提交表单\n    let tempFormData = JSON.stringify(formData.value)\n    let params = {\n      formName: \'薪资期望表单\',\n      formData: tempFormData\n    }\n    addForm_data(params).then((response) => {\n      proxy.$modal.msgSuccess(\'新增成功\')\n      resetForm()\n    })\n  })\n}\n/**\n * @name: 表单重置\n * @description: 表单重置方法\n * @return {*}\n */\nfunction resetForm() {\n  formRef.value.resetFields()\n}\n\n</script>\n<style>\n</style>\n',
        '{\"fields\":[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741965605438,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741965621419,\"layout\":\"colFormItem\",\"vModel\":\"age\"},{\"label\":\"期望薪资\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入期望薪资\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":103,\"renderKey\":1741965632534,\"layout\":\"colFormItem\",\"vModel\":\"salary\"},{\"label\":\"入职时间\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入入职时间\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":104,\"renderKey\":1741965646334,\"layout\":\"colFormItem\",\"vModel\":\"joinDate\"}],\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"薪资期望表单\"}',
        '{\"formRef\":\"formRef\",\"formModel\":\"formData\",\"size\":\"default\",\"labelPosition\":\"right\",\"labelWidth\":100,\"formRules\":\"rules\",\"gutter\":15,\"disabled\":false,\"span\":24,\"formBtns\":true,\"remark\":\"薪资期望表单\"}',
        '{\"type\":\"file\"}',
        '[{\"layout\":\"colFormItem\",\"tagIcon\":\"input\",\"label\":\"手机号\",\"vModel\":\"mobile\",\"formId\":6,\"tag\":\"el-input\",\"placeholder\":\"请输入手机号\",\"defaultValue\":\"\",\"span\":24,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"Cellphone\",\"suffix-icon\":\"\",\"maxlength\":11,\"show-word-limit\":true,\"readonly\":false,\"disabled\":false,\"required\":true,\"changeTag\":true,\"regList\":[{\"pattern\":\"/^1(3|4|5|7|8|9)\\\\d{9}$/\",\"message\":\"手机号格式错误\"}]},{\"label\":\"姓名\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入姓名\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":101,\"renderKey\":1741965605438,\"layout\":\"colFormItem\",\"vModel\":\"name\"},{\"label\":\"年龄\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入年龄\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":102,\"renderKey\":1741965621419,\"layout\":\"colFormItem\",\"vModel\":\"age\"},{\"label\":\"期望薪资\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入期望薪资\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":103,\"renderKey\":1741965632534,\"layout\":\"colFormItem\",\"vModel\":\"salary\"},{\"label\":\"入职时间\",\"tag\":\"el-input\",\"tagIcon\":\"input\",\"type\":\"text\",\"placeholder\":\"请输入入职时间\",\"span\":24,\"labelWidth\":null,\"style\":{\"width\":\"100%\"},\"clearable\":true,\"prepend\":\"\",\"append\":\"\",\"prefix-icon\":\"\",\"suffix-icon\":\"\",\"maxlength\":null,\"show-word-limit\":false,\"readonly\":false,\"disabled\":false,\"required\":true,\"regList\":[],\"changeTag\":true,\"document\":\"https://element-plus.org/zh-CN/component/input\",\"formId\":104,\"renderKey\":1741965646334,\"layout\":\"colFormItem\",\"vModel\":\"joinDate\"}]'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_form_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_form_data`;

CREATE TABLE `sys_form_data` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志',
    `create_by` int NOT NULL COMMENT '创建者',
    `dept_id` int NOT NULL COMMENT '部门id',
    `form_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单名称',
    `form_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表单数据',
    `form_id` int NOT NULL COMMENT '表单ID',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统表单';

-- ----------------------------
-- Records of sys_form_data
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_form_data` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `create_by`,
        `dept_id`,
        `form_name`,
        `form_data`,
        `form_id`
    )
VALUES (
        25,
        '2025-03-14 23:25:52',
        '2025-03-14 23:25:52',
        '0',
        1,
        103,
        '薪资期望表单',
        '{\"mobile\":\"18099993333\",\"name\":\"张三\",\"age\":\"30\",\"salary\":\"8000\",\"joinDate\":\"2025-4-1\"}',
        25
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
    `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
    `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
    `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default' COMMENT '任务组名',
    `job_executor` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'default' COMMENT '任务执行器',
    `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
    `job_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '位置参数',
    `job_kwargs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '关键字参数',
    `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
    `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
    `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '状态（0正常 1暂停）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
    PRIMARY KEY (
        `job_id`,
        `job_name`,
        `job_group`
    ) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_job` (
        `job_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `cron_expression`,
        `misfire_policy`,
        `concurrent`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '系统默认（无参）',
        'default',
        'default',
        'module_task.scheduler_test.job',
        NULL,
        NULL,
        '0/10 * * * * ?',
        '3',
        '1',
        '1',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_job` (
        `job_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `cron_expression`,
        `misfire_policy`,
        `concurrent`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '系统默认（有参）',
        'default',
        'default',
        'module_task.scheduler_test.job',
        'test',
        NULL,
        '0/15 * * * * ?',
        '3',
        '1',
        '1',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_job` (
        `job_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `cron_expression`,
        `misfire_policy`,
        `concurrent`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        '系统默认（多参）',
        'default',
        'default',
        'module_task.scheduler_test.job',
        'new',
        '{\"test\": 111}',
        '0/20 * * * * ?',
        '3',
        '1',
        '1',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_job` (
        `job_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `cron_expression`,
        `misfire_policy`,
        `concurrent`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        100,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test.fetch_table_data',
        '',
        '',
        '0 0 0 1/1 * ?',
        '1',
        '1',
        '0',
        'admin',
        '2024-11-29 15:42:14',
        'admin',
        '2025-04-11 11:45:07',
        ''
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
    `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
    `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
    `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
    `job_executor` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务执行器',
    `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
    `job_args` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '位置参数',
    `job_kwargs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '关键字参数',
    `job_trigger` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '任务触发器',
    `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '日志信息',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
    `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '异常信息',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 402 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        366,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-11 00:00:00',
        '0',
        '',
        '2025-03-11 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        367,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-11 00:00:00',
        '0',
        '',
        '2025-03-11 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        368,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-11 00:00:18',
        '0',
        '',
        '2025-03-11 00:00:18'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        369,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-11 00:00:18',
        '0',
        '',
        '2025-03-11 00:00:18'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        370,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-12 00:00:00',
        '0',
        '',
        '2025-03-12 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        371,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-12 00:00:00',
        '0',
        '',
        '2025-03-12 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        372,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-13 00:00:00',
        '0',
        '',
        '2025-03-13 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        373,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-13 00:00:00',
        '0',
        '',
        '2025-03-13 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        374,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-14 00:00:00',
        '0',
        '',
        '2025-03-14 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        375,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-14 00:00:00',
        '0',
        '',
        '2025-03-14 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        376,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-15 00:00:00',
        '0',
        '',
        '2025-03-15 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        377,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-15 00:00:00',
        '0',
        '',
        '2025-03-15 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        378,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-16 00:00:00',
        '0',
        '',
        '2025-03-16 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        379,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-16 00:00:00',
        '0',
        '',
        '2025-03-16 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        380,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-17 00:15:05',
        '0',
        '',
        '2025-03-17 00:15:05'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        381,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-17 00:15:05',
        '0',
        '',
        '2025-03-17 00:15:05'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        382,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-24 00:05:12',
        '0',
        '',
        '2025-03-24 00:05:12'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        383,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-24 00:05:12',
        '0',
        '',
        '2025-03-24 00:05:12'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        384,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-25 00:10:41',
        '0',
        '',
        '2025-03-25 00:10:41'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        385,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-25 00:10:41',
        '0',
        '',
        '2025-03-25 00:10:41'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        386,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-27 00:12:31',
        '0',
        '',
        '2025-03-27 00:12:31'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        387,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-03-27 00:12:31',
        '0',
        '',
        '2025-03-27 00:12:31'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        388,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-10 00:01:19',
        '0',
        '',
        '2025-04-10 00:01:19'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        389,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-10 00:01:19',
        '0',
        '',
        '2025-04-10 00:01:20'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        390,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobSubmissionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 00:00:00',
        '0',
        '',
        '2025-04-11 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        391,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:gen_article_job',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobExecutionEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 00:00:00',
        '0',
        '',
        '2025-04-11 00:00:00'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        392,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'cron[month=\'*\', day=\'1/1\', hour=\'0\', minute=\'0\', second=\'0\']',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:45:06',
        '0',
        '',
        '2025-04-11 11:45:07'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        393,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:45:11 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:45:10',
        '0',
        '',
        '2025-04-11 11:45:10'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        394,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:47:14 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:47:13',
        '0',
        '',
        '2025-04-11 11:47:13'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        395,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:50:27 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:50:26',
        '0',
        '',
        '2025-04-11 11:50:27'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        396,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:52:11 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:52:10',
        '0',
        '',
        '2025-04-11 11:52:10'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        397,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:52:30 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:52:29',
        '0',
        '',
        '2025-04-11 11:52:30'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        398,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:53:24 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:53:23',
        '0',
        '',
        '2025-04-11 11:53:24'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        399,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 11:54:44 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 11:54:43',
        '0',
        '',
        '2025-04-11 11:54:43'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        400,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 13:34:48 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 13:34:47',
        '0',
        '',
        '2025-04-11 13:34:48'
    );

INSERT INTO
    `sys_job_log` (
        `job_log_id`,
        `job_name`,
        `job_group`,
        `job_executor`,
        `invoke_target`,
        `job_args`,
        `job_kwargs`,
        `job_trigger`,
        `job_message`,
        `status`,
        `exception_info`,
        `create_time`
    )
VALUES (
        401,
        '文章每日生成',
        'default',
        'default',
        'module_task.scheduler_test:fetch_table_data',
        '',
        '{}',
        'date[2025-04-11 13:35:11 CST]',
        '事件类型: JobEvent, 任务ID: 100, 任务名称: 文章每日生成, 执行于2025-04-11 13:35:10',
        '0',
        '',
        '2025-04-11 13:35:10'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
    `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
    `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户账号',
    `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
    `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
    `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
    `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
    `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
    `login_time` datetime DEFAULT NULL COMMENT '访问时间',
    PRIMARY KEY (`info_id`) USING BTREE,
    KEY `idx_sys_logininfor_s` (`status`) USING BTREE,
    KEY `idx_sys_logininfor_lt` (`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 792 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        620,
        'admin',
        '113.87.162.190',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-10 13:32:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        621,
        'admin',
        '58.19.230.74',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-10 14:43:39'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        622,
        'admin',
        '175.11.233.106',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-10 16:47:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        623,
        'admin',
        '221.7.183.198',
        '内网IP',
        'Safari 18',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-10 17:28:46'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        624,
        'admin',
        '211.22.108.9',
        '内网IP',
        'Chrome 120',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-10 17:44:20'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        625,
        'admin',
        '117.140.153.58',
        '内网IP',
        'Edge 118',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-10 21:41:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        626,
        '1057732423',
        '222.70.31.209',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '用户不存在',
        '2025-03-11 00:31:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        627,
        'admin',
        '202.111.24.2',
        '内网IP',
        'Chrome 124',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 07:55:12'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        628,
        'admin',
        '202.111.24.2',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-11 07:55:17'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        629,
        'admin',
        '202.111.24.2',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 07:55:34'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        630,
        'admin',
        '113.248.44.218',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 08:33:22'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        631,
        'admin',
        '113.195.150.70',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 09:03:31'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        632,
        'admin',
        '111.166.155.117',
        '内网IP',
        'Mobile Safari 16',
        'iOS 16',
        '0',
        '登录成功',
        '2025-03-11 11:03:24'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        633,
        'admin',
        '171.213.204.99',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 11:37:55'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        634,
        'admin',
        '101.231.137.158',
        '内网IP',
        'Chrome 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 13:47:13'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        635,
        'admin',
        '103.152.113.115',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 14:15:28'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        636,
        'admin',
        '182.140.153.176',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 15:20:43'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        637,
        'admin',
        '218.28.90.98',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 16:03:19'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        638,
        'admin',
        '14.107.159.231',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 16:31:22'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        639,
        'admin',
        '140.250.208.131',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-11 16:36:04'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        640,
        'admin',
        '106.120.60.135',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 16:58:02'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        641,
        'admin',
        '115.220.243.218',
        '内网IP',
        'Chrome 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 17:12:41'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        642,
        'admin',
        '101.39.212.230',
        '内网IP',
        'Chrome 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 17:46:59'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        643,
        'admin',
        '222.84.72.122',
        '内网IP',
        'Firefox 136',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-11 19:16:21'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        644,
        'admin',
        '222.84.72.122',
        '内网IP',
        'Firefox 136',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 19:16:24'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        645,
        'admin',
        '222.218.142.248',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 20:20:09'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        646,
        'admin',
        '112.32.10.236',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 21:18:10'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        647,
        'admin',
        '59.52.52.110',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 21:48:15'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        648,
        'admin',
        '59.52.52.110',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-11 22:40:24'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        649,
        'admin',
        '221.225.204.111',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 08:10:25'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        650,
        'admin',
        '120.7.30.70',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 08:33:06'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        651,
        'admin',
        '120.228.142.198',
        '内网IP',
        'Edge 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-12 09:48:38'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        652,
        'admin',
        '140.250.208.131',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-12 09:51:09'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        653,
        'admin',
        '223.73.124.105',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 09:58:30'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        654,
        'admin',
        '182.96.233.207',
        '内网IP',
        'Chrome 124',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-12 11:09:16'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        655,
        'admin',
        '182.96.233.207',
        '内网IP',
        'Chrome 124',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-12 11:09:24'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        656,
        'admin',
        '182.96.233.207',
        '内网IP',
        'Chrome 124',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 11:09:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        657,
        'admin',
        '221.12.4.143',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 11:24:22'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        658,
        'admin',
        '163.142.111.120',
        '内网IP',
        'Edge 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 11:40:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        659,
        'admin',
        '58.135.81.3',
        '内网IP',
        'Chrome 128',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-12 15:32:52'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        660,
        'admin',
        '221.221.53.1',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 15:45:34'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        661,
        'admin',
        '112.97.204.255',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 15:52:58'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        662,
        'admin',
        '163.177.10.51',
        '内网IP',
        'Chrome 125',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 16:49:42'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        663,
        'admin',
        '122.224.179.152',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 21:30:40'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        664,
        'admin',
        '182.88.220.232',
        '内网IP',
        'Edge 126',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 21:52:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        665,
        'admin',
        '223.156.160.44',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 22:45:35'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        666,
        'admin',
        '182.88.220.232',
        '内网IP',
        'Chrome 132',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-12 23:23:46'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        667,
        'admin',
        '112.67.185.127',
        '内网IP',
        'Chrome 122',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-13 03:23:42'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        668,
        'admin',
        '112.67.185.127',
        '内网IP',
        'Chrome 122',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 03:23:58'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        669,
        'admin',
        '121.12.250.232',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 08:57:38'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        670,
        'admin',
        '221.212.68.240',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 10:29:22'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        671,
        'admin',
        '140.250.208.131',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-13 10:36:45'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        672,
        'admin',
        '163.53.18.24',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 10:38:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        673,
        'admin',
        '140.250.208.131',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-13 11:43:17'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        674,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 12:01:11'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        675,
        'admin',
        '3.82.236.133',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-13 12:46:41'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        676,
        'admin',
        '3.82.236.133',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-13 12:46:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        677,
        'admin',
        '3.82.236.133',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-13 12:46:58'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        678,
        'admin',
        '3.82.236.133',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-13 12:47:06'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        679,
        'admin',
        '218.28.90.98',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 12:49:42'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        680,
        'admin',
        '218.28.90.98',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 13:20:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        681,
        'ad',
        '218.28.90.98',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 13:31:44'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        682,
        'admin',
        '218.28.90.98',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 13:32:09'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        683,
        'admin',
        '140.250.208.131',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-13 14:07:11'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        684,
        'admin',
        '36.110.26.242',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 14:14:45'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        685,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 17:16:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        686,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-13 17:18:16'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        687,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 17:18:20'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        688,
        'admin',
        '42.49.109.196',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 18:03:25'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        689,
        'admin',
        '112.224.143.180',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 21:00:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        690,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Mobile Safari 16',
        'iOS 16',
        '1',
        '验证码已失效',
        '2025-03-13 22:46:29'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        691,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Mobile Safari 16',
        'iOS 16',
        '0',
        '登录成功',
        '2025-03-13 22:46:34'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        692,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-13 22:49:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        693,
        'admin',
        '223.85.218.135',
        '内网IP',
        'Safari 18',
        'Mac OS X 10',
        '1',
        '密码错误',
        '2025-03-13 23:07:15'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        694,
        'admin',
        '223.85.218.135',
        '内网IP',
        'Safari 18',
        'Mac OS X 10',
        '1',
        '验证码错误',
        '2025-03-13 23:07:38'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        695,
        'admin',
        '223.85.218.135',
        '内网IP',
        'Safari 18',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-13 23:07:47'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        696,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 00:11:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        697,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 00:12:03'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        698,
        'admin',
        '223.104.41.42',
        '内网IP',
        'Mobile Safari 18',
        'iOS 18',
        '0',
        '登录成功',
        '2025-03-14 07:31:28'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        699,
        'admin',
        '42.49.109.196',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 08:13:45'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        700,
        'admin',
        '36.152.209.235',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '1',
        '验证码已失效',
        '2025-03-14 09:11:55'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        701,
        'admin',
        '36.152.209.235',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 09:12:02'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        702,
        'admin',
        '223.160.115.43',
        '内网IP',
        'Chrome Mobile WebView 115',
        'Android 14',
        '0',
        '登录成功',
        '2025-03-14 09:15:16'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        703,
        'admin',
        '103.91.179.252',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-14 09:45:38'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        704,
        'admin',
        '103.91.179.252',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 09:45:45'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        705,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-14 11:21:28'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        706,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码已失效',
        '2025-03-14 11:25:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        707,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-14 11:25:54'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        708,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 11:25:57'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        709,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-14 12:18:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        710,
        'admin',
        '112.232.3.28',
        '内网IP',
        'Edge 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 12:18:38'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        711,
        'admin',
        '59.63.150.128',
        '内网IP',
        'Chrome 127',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 15:59:20'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        712,
        'admin',
        '222.212.90.187',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 16:16:28'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        713,
        'admin',
        '115.60.10.40',
        '内网IP',
        'Chrome 131',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-14 16:32:12'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        714,
        'admin',
        '58.48.219.85',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 16:40:29'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        715,
        'admin',
        '218.68.134.246',
        '内网IP',
        'Chrome 122',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 17:28:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        716,
        'admin',
        '42.49.109.196',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 17:49:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        717,
        'admin',
        '115.220.243.218',
        '内网IP',
        'Chrome 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 17:54:19'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        718,
        'admin',
        '223.156.160.44',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 18:02:11'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        719,
        'admin',
        '223.156.160.44',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 18:11:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        720,
        'admin',
        '163.142.111.120',
        '内网IP',
        'Edge 131',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 18:34:59'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        721,
        'admin',
        '39.162.162.189',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 18:50:59'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        722,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 19:29:56'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        723,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 19:34:27'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        724,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 19:38:06'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        725,
        'admin',
        '36.142.34.10',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 19:39:40'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        726,
        'admin',
        '110.184.12.122',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-14 21:28:36'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        727,
        'admin',
        '111.16.89.18',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-14 22:57:44'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        728,
        'admin',
        '59.158.99.114',
        '内网IP',
        'Chrome 133',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-14 23:26:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        729,
        'admin',
        '171.37.48.121',
        '内网IP',
        'Edge 126',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 01:53:39'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        730,
        'admin',
        '112.49.6.33',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 10:49:29'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        731,
        'admin',
        '39.144.135.30',
        '内网IP',
        'Chrome Mobile 116',
        'Android 13',
        '1',
        '密码错误',
        '2025-03-15 12:56:07'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        732,
        'admin',
        '39.144.135.30',
        '内网IP',
        'Chrome Mobile 116',
        'Android 13',
        '1',
        '验证码错误',
        '2025-03-15 12:56:15'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        733,
        'admin',
        '39.144.135.30',
        '内网IP',
        'Chrome Mobile 116',
        'Android 13',
        '0',
        '登录成功',
        '2025-03-15 12:56:22'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        734,
        'admin',
        '61.157.16.32',
        '内网IP',
        'Chrome 127',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 14:22:16'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        735,
        'admin',
        '219.134.112.195',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 15:59:27'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        736,
        'admin',
        '114.246.217.6',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 16:24:47'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        737,
        'admin',
        '112.98.103.182',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 16:33:08'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        738,
        'admin',
        '121.237.136.138',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-15 17:34:18'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        739,
        'admin',
        '125.44.123.247',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 17:49:08'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        740,
        'admin',
        '115.205.67.5',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 17:56:59'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        741,
        'admin',
        '59.54.3.255',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '1',
        '验证码已失效',
        '2025-03-15 19:45:31'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        742,
        'admin',
        '59.54.3.255',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 19:45:37'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        743,
        'admin',
        '123.101.197.102',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码已失效',
        '2025-03-15 20:24:15'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        744,
        'admin',
        '123.101.197.102',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 20:24:19'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        745,
        'admin',
        '114.228.169.139',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 20:47:55'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        746,
        'admin',
        '223.80.52.102',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 20:56:53'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        747,
        'admin',
        '27.19.149.221',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 21:05:00'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        748,
        'admin',
        '223.104.227.82',
        '内网IP',
        'Edge 126',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-15 21:30:28'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        749,
        'admin',
        '223.104.227.82',
        '内网IP',
        'Edge 126',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 21:30:43'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        750,
        'admin',
        '120.219.125.70',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 21:41:14'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        751,
        'admin',
        '113.251.62.207',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-15 21:48:03'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        752,
        'admin',
        '171.37.48.121',
        '内网IP',
        'Edge 126',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 21:59:40'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        753,
        'admin',
        '111.197.18.222',
        '内网IP',
        'Chrome 128',
        'Mac OS X 10',
        '1',
        '验证码已失效',
        '2025-03-15 22:08:43'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        754,
        'admin',
        '111.197.18.222',
        '内网IP',
        'Chrome 128',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-15 22:08:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        755,
        'admin',
        '120.219.125.70',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 22:11:00'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        756,
        'amdin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-15 22:16:03'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        757,
        'amdin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-15 22:16:07'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        758,
        'amdin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '用户不存在',
        '2025-03-15 22:16:09'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        759,
        'admin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-15 22:16:25'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        760,
        'admin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 22:16:31'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        761,
        'admin',
        '39.144.135.99',
        '内网IP',
        'Chrome 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 22:27:13'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        762,
        'admin',
        '111.15.10.207',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 22:33:43'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        763,
        'admin',
        '27.216.135.118',
        '内网IP',
        'Edge Mobile 136',
        'Android 10',
        '0',
        '登录成功',
        '2025-03-15 22:54:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        764,
        'admin',
        '111.29.72.31',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 23:11:08'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        765,
        'admin',
        '183.228.62.239',
        '内网IP',
        'Edge Mobile 134',
        'Android 10',
        '0',
        '登录成功',
        '2025-03-15 23:31:32'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        766,
        'admin',
        '36.143.7.156',
        '内网IP',
        'Firefox 136',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-15 23:37:46'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        767,
        'admin',
        '36.143.7.156',
        '内网IP',
        'Firefox 136',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 00:05:14'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        768,
        'admin',
        '116.252.3.126',
        '内网IP',
        'Chrome 109',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 00:09:12'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        769,
        'admin',
        '223.89.172.60',
        '内网IP',
        'Chrome Mobile WebView 123',
        'Android 15',
        '0',
        '登录成功',
        '2025-03-16 00:16:42'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        770,
        'admin',
        '3.115.173.225',
        '内网IP',
        'Chrome 136',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-16 01:16:29'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        771,
        'admin',
        '3.115.173.225',
        '内网IP',
        'Chrome 136',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 01:16:37'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        772,
        'admin',
        '112.224.162.90',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码错误',
        '2025-03-16 01:36:52'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        773,
        'admin',
        '112.224.162.90',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 01:36:56'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        774,
        'admin',
        '111.192.103.190',
        '内网IP',
        'Edge 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-16 01:39:43'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        775,
        'admin',
        '183.211.231.55',
        '内网IP',
        'Chrome 118',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 02:19:39'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        776,
        'admin',
        '183.211.231.55',
        '内网IP',
        'Chrome 118',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 02:26:25'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        777,
        'admin',
        '117.183.10.247',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '1',
        '验证码已失效',
        '2025-03-16 04:32:37'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        778,
        'admin',
        '117.183.10.247',
        '内网IP',
        'Edge 134',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 04:32:42'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        779,
        'admin',
        '36.44.137.23',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '1',
        '密码错误',
        '2025-03-16 04:54:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        780,
        'admin',
        '36.44.137.23',
        '内网IP',
        'Chrome 133',
        'Windows 10',
        '0',
        '登录成功',
        '2025-03-16 04:55:02'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        781,
        'admin',
        '',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-17 09:07:27'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        782,
        'admin',
        '',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-22 11:35:59'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        783,
        'admin',
        '',
        '内网IP',
        'Chrome 134',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-03-27 08:46:50'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        784,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '1',
        '验证码错误',
        '2025-04-09 14:01:34'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        785,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:01:37'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        786,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:19:29'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        787,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:28:57'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        788,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:31:33'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        789,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:34:20'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        790,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:34:49'
    );

INSERT INTO
    `sys_logininfor` (
        `info_id`,
        `user_name`,
        `ipaddr`,
        `login_location`,
        `browser`,
        `os`,
        `status`,
        `msg`,
        `login_time`
    )
VALUES (
        791,
        'admin',
        '',
        '内网IP',
        'Chrome 135',
        'Mac OS X 10',
        '0',
        '登录成功',
        '2025-04-09 14:39:45'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
    `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
    `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
    `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
    `order_num` int DEFAULT '0' COMMENT '显示顺序',
    `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由地址',
    `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '组件路径',
    `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由参数',
    `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '路由名称',
    `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
    `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
    `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
    `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
    `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '权限标识',
    `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#' COMMENT '菜单图标',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
    PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2101 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '系统管理',
        0,
        1,
        'system',
        NULL,
        '',
        '',
        1,
        0,
        'M',
        '0',
        '0',
        '',
        'system',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统管理目录'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '系统监控',
        0,
        2,
        'monitor',
        NULL,
        '',
        '',
        1,
        0,
        'M',
        '0',
        '0',
        '',
        'monitor',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统监控目录'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        '系统工具',
        0,
        3,
        'tool',
        NULL,
        '',
        '',
        1,
        0,
        'M',
        '0',
        '0',
        '',
        'tool',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统工具目录'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        100,
        '用户管理',
        1,
        1,
        'user',
        'system/user/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:user:list',
        'user',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '用户管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        101,
        '角色管理',
        1,
        2,
        'role',
        'system/role/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:role:list',
        'peoples',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '角色管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        102,
        '菜单管理',
        1,
        3,
        'menu',
        'system/menu/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:menu:list',
        'tree-table',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '菜单管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        103,
        '部门管理',
        1,
        4,
        'dept',
        'system/dept/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:dept:list',
        'tree',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '部门管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        104,
        '岗位管理',
        1,
        5,
        'post',
        'system/post/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:post:list',
        'post',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '岗位管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        105,
        '字典管理',
        1,
        6,
        'dict',
        'system/dict/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:dict:list',
        'dict',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '字典管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        106,
        '参数设置',
        1,
        7,
        'config',
        'system/config/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:config:list',
        'edit',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '参数设置菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        107,
        '通知公告',
        1,
        8,
        'notice',
        'system/notice/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'system:notice:list',
        'message',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '通知公告菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        108,
        '日志管理',
        1,
        9,
        'log',
        '',
        '',
        '',
        1,
        0,
        'M',
        '0',
        '0',
        '',
        'log',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '日志管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        109,
        '在线用户',
        2,
        1,
        'online',
        'monitor/online/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:online:list',
        'online',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '在线用户菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        110,
        '定时任务',
        2,
        2,
        'job',
        'monitor/job/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:job:list',
        'job',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '定时任务菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        111,
        '数据监控',
        2,
        3,
        'druid',
        'monitor/druid/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:druid:list',
        'druid',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '数据监控菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        112,
        '服务监控',
        2,
        4,
        'server',
        'monitor/server/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:server:list',
        'server',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '服务监控菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        113,
        '缓存监控',
        2,
        5,
        'cache',
        'monitor/cache/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:cache:list',
        'redis',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '缓存监控菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        114,
        '缓存列表',
        2,
        6,
        'cacheList',
        'monitor/cache/list',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:cache:list',
        'redis-list',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '缓存列表菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        115,
        '表单构建',
        3,
        1,
        'sys_form',
        'tool/build/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'tool:build:list',
        'build',
        'admin',
        '2024-11-13 14:12:02',
        'admin',
        '2025-04-11 09:03:27',
        '表单构建菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        116,
        '代码生成',
        3,
        2,
        'gen',
        'tool/gen/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'tool:gen:list',
        'code',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '代码生成菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        117,
        '系统接口',
        3,
        3,
        'swagger',
        'tool/swagger/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'tool:swagger:list',
        'swagger',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '系统接口菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        500,
        '操作日志',
        108,
        1,
        'operlog',
        'monitor/operlog/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:operlog:list',
        'form',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '操作日志菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        501,
        '登录日志',
        108,
        2,
        'logininfor',
        'monitor/logininfor/index',
        '',
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'monitor:logininfor:list',
        'logininfor',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '登录日志菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1000,
        '用户查询',
        100,
        1,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1001,
        '用户新增',
        100,
        2,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1002,
        '用户修改',
        100,
        3,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1003,
        '用户删除',
        100,
        4,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1004,
        '用户导出',
        100,
        5,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1005,
        '用户导入',
        100,
        6,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:import',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1006,
        '重置密码',
        100,
        7,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:user:resetPwd',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1007,
        '角色查询',
        101,
        1,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:role:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1008,
        '角色新增',
        101,
        2,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:role:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1009,
        '角色修改',
        101,
        3,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:role:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1010,
        '角色删除',
        101,
        4,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:role:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1011,
        '角色导出',
        101,
        5,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:role:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1012,
        '菜单查询',
        102,
        1,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:menu:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1013,
        '菜单新增',
        102,
        2,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:menu:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1014,
        '菜单修改',
        102,
        3,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:menu:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1015,
        '菜单删除',
        102,
        4,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:menu:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1016,
        '部门查询',
        103,
        1,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dept:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1017,
        '部门新增',
        103,
        2,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dept:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1018,
        '部门修改',
        103,
        3,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dept:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1019,
        '部门删除',
        103,
        4,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dept:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1020,
        '岗位查询',
        104,
        1,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:post:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1021,
        '岗位新增',
        104,
        2,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:post:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1022,
        '岗位修改',
        104,
        3,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:post:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1023,
        '岗位删除',
        104,
        4,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:post:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1024,
        '岗位导出',
        104,
        5,
        '',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:post:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1025,
        '字典查询',
        105,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dict:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1026,
        '字典新增',
        105,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dict:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1027,
        '字典修改',
        105,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dict:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1028,
        '字典删除',
        105,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dict:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1029,
        '字典导出',
        105,
        5,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:dict:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1030,
        '参数查询',
        106,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:config:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1031,
        '参数新增',
        106,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:config:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1032,
        '参数修改',
        106,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:config:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1033,
        '参数删除',
        106,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:config:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1034,
        '参数导出',
        106,
        5,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:config:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1035,
        '公告查询',
        107,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:notice:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1036,
        '公告新增',
        107,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:notice:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1037,
        '公告修改',
        107,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:notice:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1038,
        '公告删除',
        107,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'system:notice:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1039,
        '操作查询',
        500,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:operlog:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1040,
        '操作删除',
        500,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:operlog:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1041,
        '日志导出',
        500,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:operlog:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1042,
        '登录查询',
        501,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:logininfor:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1043,
        '登录删除',
        501,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:logininfor:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1044,
        '日志导出',
        501,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:logininfor:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1045,
        '账户解锁',
        501,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:logininfor:unlock',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1046,
        '在线查询',
        109,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:online:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1047,
        '批量强退',
        109,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:online:batchLogout',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1048,
        '单条强退',
        109,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:online:forceLogout',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1049,
        '任务查询',
        110,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1050,
        '任务新增',
        110,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:add',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1051,
        '任务修改',
        110,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1052,
        '任务删除',
        110,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1053,
        '状态修改',
        110,
        5,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:changeStatus',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1054,
        '任务导出',
        110,
        6,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'monitor:job:export',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1055,
        '生成查询',
        116,
        1,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:query',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1056,
        '生成修改',
        116,
        2,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:edit',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1057,
        '生成删除',
        116,
        3,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:remove',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1058,
        '导入代码',
        116,
        4,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:import',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1059,
        '预览代码',
        116,
        5,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:preview',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1060,
        '生成代码',
        116,
        6,
        '#',
        '',
        '',
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'tool:gen:code',
        '#',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2028,
        '业务菜单',
        0,
        10,
        'business',
        NULL,
        NULL,
        '',
        1,
        0,
        'M',
        '0',
        '0',
        NULL,
        'dict',
        'admin',
        '2025-01-17 14:16:08',
        'admin',
        '2025-04-10 23:12:31',
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2053,
        '表格管理',
        1,
        1,
        'sys_table',
        'system/table/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'sys:table:list',
        'chart',
        'admin',
        '2025-02-11 11:03:27',
        'admin',
        '2025-02-11 11:09:32',
        '表格管理菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2054,
        '表格管理查询',
        2053,
        1,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:table:query',
        '#',
        'admin',
        '2025-02-11 11:03:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2055,
        '表格管理新增',
        2053,
        2,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:table:add',
        '#',
        'admin',
        '2025-02-11 11:03:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2056,
        '表格管理修改',
        2053,
        3,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:table:edit',
        '#',
        'admin',
        '2025-02-11 11:03:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2057,
        '表格管理删除',
        2053,
        4,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:table:remove',
        '#',
        'admin',
        '2025-02-11 11:03:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2058,
        '表格管理导出',
        2053,
        5,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:table:export',
        '#',
        'admin',
        '2025-02-11 11:03:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2077,
        '司机信息',
        2028,
        1,
        'car_driver',
        'car/driver/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'car:driver:list',
        'peoples',
        'admin',
        '2025-02-18 23:56:27',
        'admin',
        '2025-03-08 16:35:19',
        '司机信息菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2078,
        '司机信息查询',
        2077,
        1,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'car:driver:query',
        '#',
        'admin',
        '2025-02-18 23:56:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2079,
        '司机信息新增',
        2077,
        2,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'car:driver:add',
        '#',
        'admin',
        '2025-02-18 23:56:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2080,
        '司机信息修改',
        2077,
        3,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'car:driver:edit',
        '#',
        'admin',
        '2025-02-18 23:56:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2081,
        '司机信息删除',
        2077,
        4,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'car:driver:remove',
        '#',
        'admin',
        '2025-02-18 23:56:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2082,
        '司机信息导出',
        2077,
        5,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'car:driver:export',
        '#',
        'admin',
        '2025-02-18 23:56:27',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2084,
        '系统表单查询',
        115,
        1,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form:query',
        '#',
        'admin',
        '2025-03-07 10:07:51',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2085,
        '系统表单新增',
        115,
        2,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form:add',
        '#',
        'admin',
        '2025-03-07 10:07:51',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2086,
        '系统表单修改',
        115,
        3,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form:edit',
        '#',
        'admin',
        '2025-03-07 10:07:51',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2087,
        '系统表单删除',
        115,
        4,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form:remove',
        '#',
        'admin',
        '2025-03-07 10:07:51',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2088,
        '系统表单导出',
        115,
        5,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form:export',
        '#',
        'admin',
        '2025-03-07 10:07:51',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2089,
        '测试表单',
        2028,
        2,
        'jobIntent',
        'form/jobIntent/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        NULL,
        'dict',
        'admin',
        '2025-03-08 16:33:25',
        'admin',
        '2025-03-08 16:34:23',
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2090,
        '表单数据列表',
        115,
        10,
        '',
        NULL,
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form_data:list',
        '#',
        'admin',
        '2025-03-10 08:58:41',
        'admin',
        '2025-03-10 08:58:41',
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2091,
        '表单数据导出',
        115,
        11,
        '',
        NULL,
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'sys:form_data:export',
        '#',
        'admin',
        '2025-03-10 09:08:19',
        'admin',
        '2025-03-10 09:08:19',
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2092,
        '期望薪资表单',
        2028,
        3,
        'salary',
        'form/salary/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        NULL,
        'date-range',
        'admin',
        '2025-03-14 23:24:54',
        'admin',
        '2025-03-14 23:25:06',
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2093,
        '学生信息表',
        2028,
        1,
        'student_info',
        'student/info/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        'student:info:list',
        'people',
        'admin',
        '2025-03-23 13:39:38',
        'admin',
        '2025-03-23 14:01:25',
        '学生信息表菜单'
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2094,
        '学生信息表查询',
        2093,
        1,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:query',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2095,
        '学生信息表新增',
        2093,
        2,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:add',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2096,
        '学生信息表修改',
        2093,
        3,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:edit',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2097,
        '学生信息表删除',
        2093,
        4,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:remove',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2098,
        '学生信息表导出',
        2093,
        5,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:export',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2099,
        '学生信息表导入',
        2093,
        6,
        '#',
        '',
        NULL,
        '',
        1,
        0,
        'F',
        '0',
        '0',
        'student:info:import',
        '#',
        'admin',
        '2025-03-23 13:39:38',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_menu` (
        `menu_id`,
        `menu_name`,
        `parent_id`,
        `order_num`,
        `path`,
        `component`,
        `query`,
        `route_name`,
        `is_frame`,
        `is_cache`,
        `menu_type`,
        `visible`,
        `status`,
        `perms`,
        `icon`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2100,
        'AI管家',
        0,
        4,
        'ai_chat',
        'ai/chat/index',
        NULL,
        '',
        1,
        0,
        'C',
        '0',
        '0',
        NULL,
        'star',
        'admin',
        '2025-04-10 23:13:54',
        'admin',
        '2025-04-11 09:32:20',
        ''
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
    `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
    `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
    `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
    `notice_content` longblob COMMENT '公告内容',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_notice` (
        `notice_id`,
        `notice_title`,
        `notice_type`,
        `notice_content`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '温馨提醒：2018-07-01 vfadmin新版本发布啦',
        '2',
        0x3C703EE696B0E78988E69CACE58685E5AEB93C2F703E,
        '0',
        'admin',
        '2024-11-13 14:12:03',
        'admin',
        '2025-03-13 13:31:00',
        '管理员'
    );

INSERT INTO
    `sys_notice` (
        `notice_id`,
        `notice_title`,
        `notice_type`,
        `notice_content`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '维护通知：2018-07-01 vfadmin系统凌晨维护',
        '1',
        0xE7BBB4E68AA4E58685E5AEB9,
        '0',
        'admin',
        '2024-11-13 14:12:03',
        '',
        NULL,
        '管理员'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
    `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
    `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
    `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
    `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
    `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
    `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
    `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
    `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
    `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
    `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
    `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
    `oper_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求参数',
    `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '返回参数',
    `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
    `error_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '错误消息',
    `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
    `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
    PRIMARY KEY (`oper_id`) USING BTREE,
    KEY `idx_sys_oper_log_bt` (`business_type`) USING BTREE,
    KEY `idx_sys_oper_log_s` (`status`) USING BTREE,
    KEY `idx_sys_oper_log_ot` (`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1190 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1116,
        'sys_form',
        5,
        'module_admin/controller/sys_form_controller.export_sys_form()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:38:16',
        8
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1117,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:42:08',
        4
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1118,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:42:46',
        2704
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1119,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:43:56',
        701
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1120,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 500, \"msg\": \"\'dict\' object has no attribute \'formData\'\", \"success\": false, \"time\": \"2025-03-10T23:49:25.587583\"}',
        1,
        '\'dict\' object has no attribute \'formData\'',
        '2025-03-10 23:49:26',
        6
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1121,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:50:23',
        4
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1122,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:52:16',
        4
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1123,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '111.16.89.18',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-10 23:58:49',
        17
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1124,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '111.16.89.18',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-11 00:00:23',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1125,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '202.111.24.2',
        '内网IP',
        '{\"id\": 79, \"prop\": \"name\", \"label\": \"司机名称\", \"sortable\": \"1\", \"width\": 110, \"fixed\": \"0\", \"align\": \"center\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"center\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"name\", \"fixed\": \"0\", \"id\": 79, \"label\": \"司机名称\", \"labelTip\": null, \"prop\": \"name\", \"show\": \"1\", \"sortable\": \"1\", \"tableName\": \"car_driver\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-11T07:56:56\", \"width\": 110, \"sequence\": 0}, \"success\": true, \"time\": \"2025-03-11T07:56:56.249790\"}',
        0,
        '',
        '2025-03-11 07:56:56',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1126,
        'car_driver',
        1,
        'module_admin/controller/car_driver_controller.add_car_driver()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/car/driver/add',
        '182.140.153.176',
        '内网IP',
        '{\"age\": \"38\", \"carType\": 1, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": \"12\", \"id\": null, \"image\": null, \"location\": \"四川省成都市\", \"name\": \"carrycheng\", \"price\": \"100\", \"updateTime\": null}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"age\": null, \"carType\": null, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": null, \"id\": null, \"image\": null, \"location\": null, \"name\": null, \"price\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-11T16:19:25.929643\"}',
        0,
        '',
        '2025-03-11 16:19:26',
        5
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1127,
        'car_driver',
        1,
        'module_admin/controller/car_driver_controller.add_car_driver()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/car/driver/add',
        '140.250.208.131',
        '内网IP',
        '{\"age\": \"39\", \"carType\": 1, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": \"10\", \"id\": null, \"image\": \"/profile/upload/2025/03/12/d6f12f7e44616de59755de512078993b_20250312095137A078.jpeg\", \"location\": \"人民广场\", \"name\": \"武松\", \"price\": \"800\", \"updateTime\": null}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"age\": null, \"carType\": null, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": null, \"id\": null, \"image\": null, \"location\": null, \"name\": null, \"price\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-12T09:52:03.229507\"}',
        0,
        '',
        '2025-03-12 09:52:03',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1128,
        'car_driver',
        1,
        'module_admin/controller/car_driver_controller.add_car_driver()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/car/driver/add',
        '218.28.90.98',
        '内网IP',
        '{\"age\": \"12\", \"carType\": 1, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": \"12\", \"id\": null, \"image\": null, \"location\": null, \"name\": \"212\", \"price\": \"12\", \"updateTime\": null}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"age\": null, \"carType\": null, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": null, \"id\": null, \"image\": null, \"location\": null, \"name\": null, \"price\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-13T12:50:07.854362\"}',
        0,
        '',
        '2025-03-13 12:50:08',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1129,
        'sys_form_data',
        1,
        'module_admin/controller/sys_form_data_controller.add_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/add',
        '218.28.90.98',
        '内网IP',
        '{\"formName\": \"求职意向调查\", \"formData\": \"{\\\"mobile\\\":\\\"13211111111\\\",\\\"name\\\":\\\"2\\\",\\\"age\\\":\\\"2\\\",\\\"salary\\\":\\\"2\\\",\\\"joinDate\\\":\\\"2025-03-14\\\",\\\"field101\\\":1}\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"formData\": null, \"formId\": null, \"formName\": null, \"id\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-13T12:51:47.885295\"}',
        0,
        '',
        '2025-03-13 12:51:48',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1130,
        'car_driver',
        3,
        'module_admin/controller/car_driver_controller.del_car_driver()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/car/driver/delete/47,20,28,36,44,18,27,35,43,16,25,33,41,15,22,24,30,32,38,40,46,14,21,23,29,31,37,39,45',
        '218.28.90.98',
        '内网IP',
        '{\"carDriverIds\": \"47,20,28,36,44,18,27,35,43,16,25,33,41,15,22,24,30,32,38,40,46,14,21,23,29,31,37,39,45\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"success\": true, \"time\": \"2025-03-13T12:53:46.875373\"}',
        0,
        '',
        '2025-03-13 12:53:47',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1131,
        'car_driver',
        1,
        'module_admin/controller/car_driver_controller.add_car_driver()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/car/driver/add',
        '218.28.90.98',
        '内网IP',
        '{\"age\": \"1\", \"carType\": 1, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": \"1\", \"id\": null, \"image\": null, \"location\": \"1\", \"name\": \"1\", \"price\": \"1\", \"updateTime\": null}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"age\": null, \"carType\": null, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"driverYears\": null, \"id\": null, \"image\": null, \"location\": null, \"name\": null, \"price\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-13T13:22:00.202747\"}',
        0,
        '',
        '2025-03-13 13:22:00',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1132,
        '岗位管理',
        3,
        'module_admin/controller/post_controler.delete_system_post()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/post/4',
        '218.28.90.98',
        '内网IP',
        '{\"post_ids\": \"4\"}',
        '{\"code\": 200, \"msg\": \"删除成功\", \"success\": true, \"time\": \"2025-03-13T13:26:24.489313\"}',
        0,
        '',
        '2025-03-13 13:26:24',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1133,
        '岗位管理',
        3,
        'module_admin/controller/post_controler.delete_system_post()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/post/3',
        '218.28.90.98',
        '内网IP',
        '{\"post_ids\": \"3\"}',
        '{\"code\": 500, \"msg\": \"人力资源已分配，不能删除\", \"success\": false, \"time\": \"2025-03-13T13:26:26.686232\"}',
        1,
        '人力资源已分配，不能删除',
        '2025-03-13 13:26:27',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1134,
        '岗位管理',
        3,
        'module_admin/controller/post_controler.delete_system_post()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/post/3',
        '218.28.90.98',
        '内网IP',
        '{\"post_ids\": \"3\"}',
        '{\"code\": 500, \"msg\": \"人力资源已分配，不能删除\", \"success\": false, \"time\": \"2025-03-13T13:26:29.382071\"}',
        1,
        '人力资源已分配，不能删除',
        '2025-03-13 13:26:29',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1135,
        '岗位管理',
        3,
        'module_admin/controller/post_controler.delete_system_post()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/post/2',
        '218.28.90.98',
        '内网IP',
        '{\"post_ids\": \"2\"}',
        '{\"code\": 500, \"msg\": \"项目经理已分配，不能删除\", \"success\": false, \"time\": \"2025-03-13T13:26:31.335571\"}',
        1,
        '项目经理已分配，不能删除',
        '2025-03-13 13:26:31',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1136,
        '岗位管理',
        3,
        'module_admin/controller/post_controler.delete_system_post()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/post/1',
        '218.28.90.98',
        '内网IP',
        '{\"post_ids\": \"1\"}',
        '{\"code\": 500, \"msg\": \"董事长已分配，不能删除\", \"success\": false, \"time\": \"2025-03-13T13:26:33.519229\"}',
        1,
        '董事长已分配，不能删除',
        '2025-03-13 13:26:34',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1137,
        '部门管理',
        3,
        'module_admin/controller/dept_controller.delete_system_dept()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/dept/200',
        '218.28.90.98',
        '内网IP',
        '{\"dept_ids\": \"200\"}',
        '{\"code\": 601, \"msg\": \"存在下级部门,不允许删除\", \"success\": false, \"time\": \"2025-03-13T13:26:41.180331\"}',
        1,
        '存在下级部门,不允许删除',
        '2025-03-13 13:26:41',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1138,
        '部门管理',
        3,
        'module_admin/controller/dept_controller.delete_system_dept()',
        'DELETE',
        1,
        'admin',
        '研发部门',
        '/system/dept/109',
        '218.28.90.98',
        '内网IP',
        '{\"dept_ids\": \"109\"}',
        '{\"code\": 200, \"msg\": \"删除成功\", \"success\": true, \"time\": \"2025-03-13T13:26:44.841804\"}',
        0,
        '',
        '2025-03-13 13:26:45',
        6
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1139,
        '通知公告',
        2,
        'module_admin/controller/notice_controller.edit_system_notice()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/notice',
        '218.28.90.98',
        '内网IP',
        '{\"noticeId\": 1, \"noticeTitle\": \"温馨提醒：2018-07-01 vfadmin新版本发布啦\", \"noticeType\": \"2\", \"noticeContent\": \"<p>新版本内容</p>\", \"status\": \"0\", \"createBy\": \"admin\", \"createTime\": \"2024-11-13T14:12:03\", \"updateBy\": \"admin\", \"updateTime\": \"2025-02-20T20:26:01\", \"remark\": \"管理员\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-13T13:30:59.922528\"}',
        0,
        '',
        '2025-03-13 13:31:00',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1140,
        '用户管理',
        1,
        'module_admin/controller/user_controller.add_system_user()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/system/user',
        '218.28.90.98',
        '内网IP',
        '{\"deptId\": 100, \"userName\": \"ad\", \"nickName\": \"a\", \"password\": \"asdfgh\", \"status\": \"0\", \"postIds\": [], \"roleIds\": []}',
        '{\"code\": 200, \"msg\": \"新增成功\", \"success\": true, \"time\": \"2025-03-13T13:31:27.230911\"}',
        0,
        '',
        '2025-03-13 13:31:27',
        30
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1141,
        '用户管理',
        2,
        'module_admin/controller/user_controller.edit_system_user()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/user',
        '218.28.90.98',
        '内网IP',
        '{\"userId\": 118, \"deptId\": 100, \"userName\": \"ad\", \"nickName\": \"a\", \"userType\": \"00\", \"email\": \"\", \"phonenumber\": \"\", \"sex\": \"0\", \"avatar\": \"\", \"status\": \"0\", \"delFlag\": \"0\", \"loginIp\": \"\", \"loginDate\": \"2025-03-13T13:31:44\", \"createBy\": \"admin\", \"createTime\": \"2025-03-13T13:31:27\", \"updateBy\": \"admin\", \"updateTime\": \"2025-03-13T13:31:27\", \"remark\": null, \"admin\": false, \"postIds\": [], \"roleIds\": [2], \"dept\": {\"deptId\": 100, \"parentId\": 0, \"ancestors\": \"0\", \"deptName\": \"集团总公司\", \"orderNum\": 0, \"leader\": \"年糕\", \"phone\": \"15888888888\", \"email\": \"niangao@qq.com\", \"status\": \"0\", \"delFlag\": \"0\", \"createBy\": \"admin\", \"createTime\": \"2024-11-13T14:12:02\", \"updateBy\": \"\", \"updateTime\": null}, \"role\": []}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-13T13:32:23.424797\"}',
        0,
        '',
        '2025-03-13 13:32:23',
        7
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1142,
        '角色管理',
        2,
        'module_admin/controller/role_controller.edit_system_role()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/role',
        '218.28.90.98',
        '内网IP',
        '{\"roleId\": 2, \"roleName\": \"普通角色\", \"roleKey\": \"common\", \"roleSort\": 2, \"dataScope\": \"3\", \"menuCheckStrictly\": true, \"deptCheckStrictly\": true, \"status\": \"0\", \"delFlag\": \"0\", \"createBy\": \"admin\", \"createTime\": \"2024-11-13T14:12:02\", \"updateBy\": \"admin\", \"updateTime\": \"2025-02-20T22:34:48\", \"remark\": \"普通角色\", \"admin\": false, \"menuIds\": [1, 2028, 2053, 2054, 2055, 2056, 2057, 2058, 100, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 101, 1007, 1008, 1009, 1010, 1011, 103, 1016, 1017, 1018, 1019, 2077, 2078, 2079, 2080, 2081, 2082]}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-13T13:32:38.601647\"}',
        0,
        '',
        '2025-03-13 13:32:39',
        6
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1143,
        'sys_form',
        1,
        'module_admin/controller/sys_form_controller.add_sys_form()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form/add',
        '111.16.89.18',
        '内网IP',
        '请求参数过长',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"content\": null, \"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"formConf\": null, \"formData\": null, \"generateConf\": null, \"drawingList\": null, \"id\": null, \"name\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-14T23:22:23.044055\"}',
        0,
        '',
        '2025-03-14 23:22:23',
        7
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1144,
        '菜单管理',
        1,
        'module_admin/controller/menu_controller.add_system_menu()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '111.16.89.18',
        '内网IP',
        '{\"parentId\": 2028, \"menuName\": \"期望薪资表单\", \"icon\": \"date-range\", \"menuType\": \"C\", \"orderNum\": 3, \"isFrame\": 1, \"isCache\": 0, \"visible\": \"0\", \"status\": \"0\", \"path\": \"salary\", \"component\": \"/form/salary/index\"}',
        '{\"code\": 200, \"msg\": \"新增成功\", \"success\": true, \"time\": \"2025-03-14T23:24:54.265394\"}',
        0,
        '',
        '2025-03-14 23:24:54',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1145,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '111.16.89.18',
        '内网IP',
        '{\"menuId\": 2092, \"menuName\": \"期望薪资表单\", \"parentId\": 2028, \"orderNum\": 3, \"path\": \"salary\", \"component\": \"form/salary/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": null, \"icon\": \"date-range\", \"createBy\": \"admin\", \"createTime\": \"2025-03-14T23:24:54\", \"updateBy\": \"admin\", \"updateTime\": \"2025-03-14T23:24:54\", \"remark\": \"\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-14T23:25:06.038142\"}',
        0,
        '',
        '2025-03-14 23:25:06',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1146,
        'sys_form_data',
        1,
        'module_admin/controller/sys_form_data_controller.add_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/add',
        '111.16.89.18',
        '内网IP',
        '{\"formName\": \"薪资期望表单\", \"formData\": \"{\\\"mobile\\\":\\\"18099993333\\\",\\\"name\\\":\\\"张三\\\",\\\"age\\\":\\\"30\\\",\\\"salary\\\":\\\"8000\\\",\\\"joinDate\\\":\\\"2025-4-1\\\"}\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"createBy\": null, \"createTime\": null, \"delFlag\": null, \"deptId\": null, \"formData\": null, \"formId\": null, \"formName\": null, \"id\": null, \"updateTime\": null}, \"success\": true, \"time\": \"2025-03-14T23:25:51.781252\"}',
        0,
        '',
        '2025-03-14 23:25:52',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1147,
        'sys_form_data',
        5,
        'module_admin/controller/sys_form_data_controller.export_sys_form_data()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/form_data/export',
        '111.16.89.18',
        '内网IP',
        '',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-14 23:28:08',
        8
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1148,
        'car_driver',
        5,
        'module_admin/controller/car_driver_controller.export_car_driver()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/car/driver/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-21 15:49:08',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1149,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 95, \"prop\": \"gender\", \"label\": \"性别\", \"sortable\": \"0\", \"width\": 80, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"gender\", \"fixed\": \"0\", \"id\": 95, \"label\": \"性别\", \"labelTip\": null, \"prop\": \"gender\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:04\", \"width\": 80, \"sequence\": 7}, \"success\": true, \"time\": \"2025-03-23T13:55:03.864865\"}',
        0,
        '',
        '2025-03-23 13:55:04',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1150,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 97, \"prop\": \"name\", \"label\": \"姓名\", \"sortable\": \"0\", \"width\": 93, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"name\", \"fixed\": \"0\", \"id\": 97, \"label\": \"姓名\", \"labelTip\": null, \"prop\": \"name\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:08\", \"width\": 93, \"sequence\": 10}, \"success\": true, \"time\": \"2025-03-23T13:55:07.823768\"}',
        0,
        '',
        '2025-03-23 13:55:08',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1151,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.sys_table_column_sort()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/table/column/sort',
        '',
        '内网IP',
        '{\"ids\": [97, 92, 93, 94, 95, 96, 98, 99, 100]}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"success\": true, \"time\": \"2025-03-23T13:55:12.972118\"}',
        0,
        '',
        '2025-03-23 13:55:13',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1152,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.sys_table_column_sort()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/table/column/sort',
        '',
        '内网IP',
        '{\"ids\": [97, 92, 93, 95, 94, 96, 98, 99, 100]}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"success\": true, \"time\": \"2025-03-23T13:55:14.318897\"}',
        0,
        '',
        '2025-03-23 13:55:14',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1153,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.sys_table_column_sort()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/table/column/sort',
        '',
        '内网IP',
        '{\"ids\": [97, 96, 92, 93, 95, 94, 98, 99, 100]}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"success\": true, \"time\": \"2025-03-23T13:55:17.177909\"}',
        0,
        '',
        '2025-03-23 13:55:17',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1154,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.sys_table_column_sort()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/sys/table/column/sort',
        '',
        '内网IP',
        '{\"ids\": [97, 96, 95, 92, 93, 94, 98, 99, 100]}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"success\": true, \"time\": \"2025-03-23T13:55:18.731837\"}',
        0,
        '',
        '2025-03-23 13:55:19',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1155,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 92, \"prop\": \"className\", \"label\": \"班级\", \"sortable\": \"0\", \"width\": 92, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"class_name\", \"fixed\": \"0\", \"id\": 92, \"label\": \"班级\", \"labelTip\": null, \"prop\": \"className\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:24\", \"width\": 92, \"sequence\": 3}, \"success\": true, \"time\": \"2025-03-23T13:55:24.075726\"}',
        0,
        '',
        '2025-03-23 13:55:24',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1156,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 93, \"prop\": \"dateOfBirth\", \"label\": \"出生日期\", \"sortable\": \"0\", \"width\": 120, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"date_of_birth\", \"fixed\": \"0\", \"id\": 93, \"label\": \"出生日期\", \"labelTip\": null, \"prop\": \"dateOfBirth\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:27\", \"width\": 120, \"sequence\": 4}, \"success\": true, \"time\": \"2025-03-23T13:55:27.343275\"}',
        0,
        '',
        '2025-03-23 13:55:27',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1157,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 94, \"prop\": \"email\", \"label\": \"电子邮箱\", \"sortable\": \"0\", \"width\": 184, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"email\", \"fixed\": \"0\", \"id\": 94, \"label\": \"电子邮箱\", \"labelTip\": null, \"prop\": \"email\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:30\", \"width\": 184, \"sequence\": 5}, \"success\": true, \"time\": \"2025-03-23T13:55:30.416863\"}',
        0,
        '',
        '2025-03-23 13:55:30',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1158,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 98, \"prop\": \"phoneNumber\", \"label\": \"联系电话\", \"sortable\": \"0\", \"width\": 112, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"phone_number\", \"fixed\": \"0\", \"id\": 98, \"label\": \"联系电话\", \"labelTip\": null, \"prop\": \"phoneNumber\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:35\", \"width\": 112, \"sequence\": 6}, \"success\": true, \"time\": \"2025-03-23T13:55:34.542521\"}',
        0,
        '',
        '2025-03-23 13:55:35',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1159,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 99, \"prop\": \"updateTime\", \"label\": \"更新时间\", \"sortable\": \"0\", \"width\": 113, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"update_time\", \"fixed\": \"0\", \"id\": 99, \"label\": \"更新时间\", \"labelTip\": null, \"prop\": \"updateTime\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:37\", \"width\": 113, \"sequence\": 7}, \"success\": true, \"time\": \"2025-03-23T13:55:37.202700\"}',
        0,
        '',
        '2025-03-23 13:55:37',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1160,
        'sys_table',
        2,
        'module_admin/controller/sys_table_controller.update_sys_table()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/sys/table/update',
        '',
        '内网IP',
        '{\"id\": 96, \"prop\": \"major\", \"label\": \"专业\", \"sortable\": \"0\", \"width\": 131, \"fixed\": \"0\", \"align\": \"left\", \"show\": \"1\", \"tooltip\": \"1\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"align\": \"left\", \"createTime\": null, \"delFlag\": \"0\", \"fieldName\": \"major\", \"fixed\": \"0\", \"id\": 96, \"label\": \"专业\", \"labelTip\": null, \"prop\": \"major\", \"show\": \"1\", \"sortable\": \"0\", \"tableName\": \"student_info\", \"tooltip\": \"1\", \"updateBy\": null, \"updateByName\": null, \"updateTime\": \"2025-03-23T13:55:42\", \"width\": 131, \"sequence\": 1}, \"success\": true, \"time\": \"2025-03-23T13:55:42.140429\"}',
        0,
        '',
        '2025-03-23 13:55:42',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1161,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-23 13:55:46',
        4
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1162,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2093, \"menuName\": \"学生信息表\", \"parentId\": 2028, \"orderNum\": 1, \"path\": \"student_info\", \"component\": \"student/info/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": \"student:info:list\", \"icon\": \"peoples\", \"createBy\": \"admin\", \"createTime\": \"2025-03-23T13:39:38\", \"updateBy\": \"\", \"updateTime\": null, \"remark\": \"学生信息表菜单\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-23T14:00:39.267005\"}',
        0,
        '',
        '2025-03-23 14:00:39',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1163,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2093, \"menuName\": \"学生信息表\", \"parentId\": 2028, \"orderNum\": 1, \"path\": \"student_info\", \"component\": \"student/info/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": \"student:info:list\", \"icon\": \"user\", \"createBy\": \"admin\", \"createTime\": \"2025-03-23T13:39:38\", \"updateBy\": \"admin\", \"updateTime\": \"2025-03-23T14:00:39\", \"remark\": \"学生信息表菜单\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-23T14:01:10.267993\"}',
        0,
        '',
        '2025-03-23 14:01:10',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1164,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2093, \"menuName\": \"学生信息表\", \"parentId\": 2028, \"orderNum\": 1, \"path\": \"student_info\", \"component\": \"student/info/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": \"student:info:list\", \"icon\": \"people\", \"createBy\": \"admin\", \"createTime\": \"2025-03-23T13:39:38\", \"updateBy\": \"admin\", \"updateTime\": \"2025-03-23T14:01:10\", \"remark\": \"学生信息表菜单\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-03-23T14:01:24.843749\"}',
        0,
        '',
        '2025-03-23 14:01:25',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1165,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-24 08:54:13',
        4
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1166,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 500, \"msg\": \"tuple indices must be integers or slices, not str\", \"success\": false, \"time\": \"2025-03-24T09:31:11.287405\"}',
        1,
        'tuple indices must be integers or slices, not str',
        '2025-03-24 09:31:11',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1167,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 500, \"msg\": \"\'operate\'\", \"success\": false, \"time\": \"2025-03-24T09:34:10.752239\"}',
        1,
        '\'operate\'',
        '2025-03-24 09:34:11',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1168,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-24 09:35:40',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1169,
        'student_info',
        5,
        'module_admin/controller/student_info_controller.export_student_info()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/student/info/export',
        '',
        '内网IP',
        'pageNum: 1\npageSize: 10',
        '{\"code\": 200, \"message\": \"获取成功\"}',
        0,
        '',
        '2025-03-24 09:40:52',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1170,
        'student_info',
        2,
        'module_admin/controller/student_info_controller.update_student_info()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/student/info/update',
        '',
        '内网IP',
        '{\"className\": \"IS2024\", \"createBy\": 1, \"createTime\": \"2025-03-24T20:29:50\", \"dateOfBirth\": \"2003-01-30T00:00:00\", \"delFlag\": \"0\", \"deptId\": 103, \"email\": \"zhengshi@example.com\", \"gender\": \"0\", \"id\": 134, \"major\": \"数学系\", \"name\": \"郑十\", \"phoneNumber\": \"13800000008\", \"updateTime\": \"2025-03-24T20:29:50\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"className\": \"IS2024\", \"createBy\": 1, \"createTime\": \"2025-03-24T20:29:50\", \"dateOfBirth\": \"2003-01-30T00:00:00\", \"delFlag\": \"0\", \"deptId\": 103, \"email\": \"zhengshi@example.com\", \"gender\": \"0\", \"id\": 134, \"major\": \"数学系\", \"name\": \"郑十\", \"phoneNumber\": \"13800000008\", \"updateTime\": \"2025-03-24T20:29:50\"}, \"success\": true, \"time\": \"2025-03-27T17:15:47.938635\"}',
        0,
        '',
        '2025-03-27 17:15:48',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1171,
        'student_info',
        2,
        'module_admin/controller/student_info_controller.update_student_info()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/student/info/update',
        '',
        '内网IP',
        '{\"className\": \"NE2023\", \"createBy\": 1, \"createTime\": \"2025-03-24T20:29:50\", \"dateOfBirth\": \"2002-09-22T00:00:00\", \"delFlag\": \"0\", \"deptId\": 103, \"email\": \"zhouba@example.com\", \"gender\": \"1\", \"id\": 132, \"major\": \"数学系\", \"name\": \"周八皮\", \"phoneNumber\": \"13800000006\", \"updateTime\": \"2025-03-24T20:29:50\"}',
        '{\"code\": 500, \"msg\": \"No primary key value supplied for column(s) student_info.id; per-row ORM Bulk UPDATE by Primary Key requires that records contain primary key values (Background on this error at: https://sqlalche.me/e/20/bupq)\", \"success\": false, \"time\": \"2025-03-27T17:34:12.455563\"}',
        1,
        'No primary key value supplied for column(s) student_info.id; per-row ORM Bulk UPDATE by Primary Key requires that records contain primary key values (Background on this error at: https://sqlalche.me/e/20/bupq)',
        '2025-03-27 17:34:12',
        5
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1172,
        'student_info',
        2,
        'module_admin/controller/student_info_controller.update_student_info()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/student/info/update',
        '',
        '内网IP',
        '{\"className\": \"NE2023\", \"createBy\": 1, \"createTime\": \"2025-03-24T20:29:50\", \"dateOfBirth\": \"2002-09-22T00:00:00\", \"delFlag\": \"0\", \"deptId\": 103, \"email\": \"zhouba@example.com\", \"gender\": \"1\", \"id\": 132, \"major\": \"数学系\", \"name\": \"周八皮\", \"phoneNumber\": \"13800000006\", \"updateTime\": \"2025-03-24T20:29:50\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"className\": \"NE2023\", \"createBy\": 1, \"createTime\": \"2025-03-24T20:29:50\", \"dateOfBirth\": \"2002-09-22T00:00:00\", \"delFlag\": \"0\", \"deptId\": 103, \"email\": \"zhouba@example.com\", \"gender\": \"1\", \"id\": 132, \"major\": \"数学系\", \"name\": \"周八皮\", \"phoneNumber\": \"13800000006\", \"updateTime\": \"2025-03-27T17:36:34\"}, \"success\": true, \"time\": \"2025-03-27T17:36:33.556589\"}',
        0,
        '',
        '2025-03-27 17:36:34',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1173,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2028, \"menuName\": \"业务菜单\", \"parentId\": 0, \"orderNum\": 10, \"path\": \"business\", \"component\": null, \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"M\", \"visible\": \"0\", \"status\": \"0\", \"perms\": null, \"icon\": \"dict\", \"createBy\": \"admin\", \"createTime\": \"2025-01-17T14:16:08\", \"updateBy\": \"admin\", \"updateTime\": \"2025-01-17T14:16:08\", \"remark\": \"\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-10T23:12:30.806389\"}',
        0,
        '',
        '2025-04-10 23:12:31',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1174,
        '菜单管理',
        1,
        'module_admin/controller/menu_controller.add_system_menu()',
        'POST',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"parentId\": 0, \"menuName\": \"AI管家\", \"routeName\": \"\", \"icon\": \"star\", \"menuType\": \"C\", \"orderNum\": 4, \"isFrame\": 1, \"isCache\": 0, \"visible\": \"0\", \"status\": \"0\", \"path\": \"aiManager\", \"component\": \"ai/chat/index\"}',
        '{\"code\": 200, \"msg\": \"新增成功\", \"success\": true, \"time\": \"2025-04-10T23:13:53.578513\"}',
        0,
        '',
        '2025-04-10 23:13:54',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1175,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2100, \"menuName\": \"AI管家\", \"parentId\": 0, \"orderNum\": 4, \"path\": \"ai_chat\", \"component\": \"ai/chat/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": null, \"icon\": \"star\", \"createBy\": \"admin\", \"createTime\": \"2025-04-10T23:13:54\", \"updateBy\": \"admin\", \"updateTime\": \"2025-04-10T23:13:54\", \"remark\": \"\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-11T09:01:11.209593\"}',
        0,
        '',
        '2025-04-11 09:01:11',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1176,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 115, \"menuName\": \"表单构建\", \"parentId\": 3, \"orderNum\": 1, \"path\": \"form_build\", \"component\": \"tool/build/index\", \"query\": \"\", \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": \"tool:build:list\", \"icon\": \"build\", \"createBy\": \"admin\", \"createTime\": \"2024-11-13T14:12:02\", \"updateBy\": \"\", \"updateTime\": null, \"remark\": \"表单构建菜单\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-11T09:01:59.279545\"}',
        0,
        '',
        '2025-04-11 09:01:59',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1177,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 115, \"menuName\": \"表单构建\", \"parentId\": 3, \"orderNum\": 1, \"path\": \"sys_form\", \"component\": \"tool/build/index\", \"query\": \"\", \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": \"tool:build:list\", \"icon\": \"build\", \"createBy\": \"admin\", \"createTime\": \"2024-11-13T14:12:02\", \"updateBy\": \"admin\", \"updateTime\": \"2025-04-11T09:01:59\", \"remark\": \"表单构建菜单\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-11T09:03:26.930842\"}',
        0,
        '',
        '2025-04-11 09:03:27',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1178,
        '菜单管理',
        2,
        'module_admin/controller/menu_controller.edit_system_menu()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/system/menu',
        '',
        '内网IP',
        '{\"menuId\": 2100, \"menuName\": \"AI管家\", \"parentId\": 0, \"orderNum\": 4, \"path\": \"ai_chat\", \"component\": \"ai/chat/index\", \"query\": null, \"routeName\": \"\", \"isFrame\": 1, \"isCache\": 0, \"menuType\": \"C\", \"visible\": \"0\", \"status\": \"0\", \"perms\": null, \"icon\": \"star\", \"createBy\": \"admin\", \"createTime\": \"2025-04-10T23:13:54\", \"updateBy\": \"admin\", \"updateTime\": \"2025-04-11T09:01:11\", \"remark\": \"\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-11T09:32:20.233892\"}',
        0,
        '',
        '2025-04-11 09:32:20',
        1
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1179,
        '定时任务',
        2,
        'module_admin/controller/job_controller.edit_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobName\": \"文章每日生成\", \"jobGroup\": \"default\", \"jobExecutor\": \"default\", \"invokeTarget\": \"module_task.scheduler_test.fetch_table_data\", \"jobArgs\": \"\", \"jobKwargs\": \"\", \"cronExpression\": \"0 0 0 1/1 * ?\", \"misfirePolicy\": \"1\", \"concurrent\": \"1\", \"status\": \"0\", \"createBy\": \"admin\", \"createTime\": \"2024-11-29T15:42:14\", \"updateBy\": \"admin\", \"updateTime\": \"2025-01-02T09:28:41\", \"remark\": \"\"}',
        '{\"code\": 200, \"msg\": \"更新成功\", \"success\": true, \"time\": \"2025-04-11T11:45:06.616682\"}',
        0,
        '',
        '2025-04-11 11:45:07',
        2
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1180,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:45:10.132756\"}',
        0,
        '',
        '2025-04-11 11:45:10',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1181,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:47:13.287259\"}',
        0,
        '',
        '2025-04-11 11:47:13',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1182,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:50:26.954501\"}',
        0,
        '',
        '2025-04-11 11:50:27',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1183,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:52:10.442050\"}',
        0,
        '',
        '2025-04-11 11:52:10',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1184,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:52:29.733931\"}',
        0,
        '',
        '2025-04-11 11:52:30',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1185,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:53:23.522229\"}',
        0,
        '',
        '2025-04-11 11:53:24',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1186,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T11:54:43.384912\"}',
        0,
        '',
        '2025-04-11 11:54:43',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1187,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T13:34:48.010271\"}',
        0,
        '',
        '2025-04-11 13:34:48',
        3
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1188,
        '定时任务',
        2,
        'module_admin/controller/job_controller.execute_system_job()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/monitor/job/run',
        '',
        '内网IP',
        '{\"jobId\": 100, \"jobGroup\": \"default\"}',
        '{\"code\": 200, \"msg\": \"执行成功\", \"success\": true, \"time\": \"2025-04-11T13:35:10.227131\"}',
        0,
        '',
        '2025-04-11 13:35:10',
        0
    );

INSERT INTO
    `sys_oper_log` (
        `oper_id`,
        `title`,
        `business_type`,
        `method`,
        `request_method`,
        `operator_type`,
        `oper_name`,
        `dept_name`,
        `oper_url`,
        `oper_ip`,
        `oper_location`,
        `oper_param`,
        `json_result`,
        `status`,
        `error_msg`,
        `oper_time`,
        `cost_time`
    )
VALUES (
        1189,
        'car_driver',
        2,
        'module_admin/controller/car_driver_controller.update_car_driver()',
        'PUT',
        1,
        'admin',
        '研发部门',
        '/car/driver/update',
        '',
        '内网IP',
        '{\"age\": \"65\", \"carType\": 2, \"createBy\": 1, \"createTime\": \"2025-03-23T13:15:38\", \"delFlag\": \"0\", \"deptId\": 103, \"driverYears\": 9, \"id\": 152, \"image\": \"https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg\", \"location\": \"天津市区\", \"name\": \"牛先生\", \"price\": 850, \"updateTime\": \"2025-03-23T13:15:38\"}',
        '{\"code\": 200, \"msg\": \"操作成功\", \"data\": {\"age\": 65, \"carType\": 2, \"createBy\": 1, \"createTime\": \"2025-03-23T13:15:38\", \"delFlag\": \"0\", \"deptId\": 103, \"driverYears\": 9, \"id\": 152, \"image\": \"https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1739894280.597399.jpg\", \"location\": \"天津市区\", \"name\": \"牛先生\", \"price\": 850.0, \"updateTime\": \"2025-03-23T13:15:38\"}, \"success\": true, \"time\": \"2025-04-11T14:28:42.257948\"}',
        0,
        '',
        '2025-04-11 14:28:42',
        1
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
    `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
    `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
    `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
    `post_sort` int NOT NULL COMMENT '显示顺序',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_post` (
        `post_id`,
        `post_code`,
        `post_name`,
        `post_sort`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        'ceo',
        '董事长',
        1,
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_post` (
        `post_id`,
        `post_code`,
        `post_name`,
        `post_sort`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        'se',
        '项目经理',
        2,
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

INSERT INTO
    `sys_post` (
        `post_id`,
        `post_code`,
        `post_name`,
        `post_sort`,
        `status`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        3,
        'hr',
        '人力资源',
        3,
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        ''
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
    `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
    `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
    `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
    `role_sort` int NOT NULL COMMENT '显示顺序',
    `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
    `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
    `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_role` (
        `role_id`,
        `role_name`,
        `role_key`,
        `role_sort`,
        `data_scope`,
        `menu_check_strictly`,
        `dept_check_strictly`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        '超级管理员',
        'admin',
        1,
        '1',
        1,
        1,
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        '',
        NULL,
        '超级管理员'
    );

INSERT INTO
    `sys_role` (
        `role_id`,
        `role_name`,
        `role_key`,
        `role_sort`,
        `data_scope`,
        `menu_check_strictly`,
        `dept_check_strictly`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        '普通角色',
        'common',
        2,
        '3',
        1,
        1,
        '0',
        '0',
        'admin',
        '2024-11-13 14:12:02',
        'admin',
        '2025-03-13 13:32:39',
        '普通角色'
    );

INSERT INTO
    `sys_role` (
        `role_id`,
        `role_name`,
        `role_key`,
        `role_sort`,
        `data_scope`,
        `menu_check_strictly`,
        `dept_check_strictly`,
        `status`,
        `del_flag`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        100,
        '文章管理',
        '文章管理',
        0,
        '1',
        0,
        1,
        '0',
        '0',
        'admin',
        '2024-12-14 16:22:24',
        'admin',
        '2025-01-13 13:49:32',
        '文章管理'
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
    `role_id` bigint NOT NULL COMMENT '角色ID',
    `dept_id` bigint NOT NULL COMMENT '部门ID',
    PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;

COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
    `role_id` bigint NOT NULL COMMENT '角色ID',
    `menu_id` bigint NOT NULL COMMENT '菜单ID',
    PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 100);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 101);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 103);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1000);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1001);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1002);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1003);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1004);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1005);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1006);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1007);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1008);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1009);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1010);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1011);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1016);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1017);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1018);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 1019);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2028);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2053);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2054);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2055);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2056);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2057);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2058);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2077);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2078);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2079);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2080);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2081);

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES (2, 2082);

COMMIT;

-- ----------------------------
-- Table structure for sys_table
-- ----------------------------
DROP TABLE IF EXISTS `sys_table`;

CREATE TABLE `sys_table` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标志',
    `update_by` int DEFAULT NULL COMMENT '更新者',
    `update_by_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新者',
    `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表名',
    `field_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段名',
    `show` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '可见',
    `prop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性（驼峰值）',
    `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字段标签',
    `sortable` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '可排序',
    `width` int NOT NULL DEFAULT '150' COMMENT '宽度',
    `label_tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '字段标签解释',
    `fixed` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '固定表头',
    `align` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'left' COMMENT '对其方式',
    `tooltip` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '超出隐藏',
    `sequence` int NOT NULL DEFAULT '0' COMMENT '字段顺序',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '表格管理';

-- ----------------------------
-- Records of sys_table
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        74,
        NULL,
        '2025-02-18 23:58:36',
        '0',
        NULL,
        NULL,
        'car_driver',
        'age',
        '1',
        'age',
        '年龄',
        '0',
        76,
        NULL,
        '0',
        'left',
        '1',
        1
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        75,
        NULL,
        '2025-02-18 23:58:27',
        '0',
        NULL,
        NULL,
        'car_driver',
        'car_type',
        '1',
        'carType',
        '车辆类型',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        2
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        76,
        NULL,
        '2025-02-18 23:58:40',
        '0',
        NULL,
        NULL,
        'car_driver',
        'driver_years',
        '1',
        'driverYears',
        '驾龄',
        '0',
        80,
        NULL,
        '0',
        'left',
        '1',
        3
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        77,
        NULL,
        '2025-02-18 23:58:43',
        '0',
        NULL,
        NULL,
        'car_driver',
        'image',
        '1',
        'image',
        '图片',
        '0',
        104,
        NULL,
        '0',
        'left',
        '1',
        4
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        78,
        NULL,
        '2025-02-18 23:58:27',
        '0',
        NULL,
        NULL,
        'car_driver',
        'location',
        '1',
        'location',
        '所在位置',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        5
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        79,
        NULL,
        '2025-03-11 07:56:56',
        '0',
        NULL,
        NULL,
        'car_driver',
        'name',
        '1',
        'name',
        '司机名称',
        '1',
        110,
        NULL,
        '0',
        'center',
        '1',
        0
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        80,
        NULL,
        '2025-02-18 23:58:47',
        '0',
        NULL,
        NULL,
        'car_driver',
        'price',
        '1',
        'price',
        '价格',
        '0',
        88,
        NULL,
        '0',
        'left',
        '1',
        6
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        81,
        NULL,
        '2025-02-18 23:58:51',
        '0',
        NULL,
        NULL,
        'car_driver',
        'update_time',
        '1',
        'updateTime',
        '更新时间',
        '0',
        138,
        NULL,
        '0',
        'left',
        '1',
        7
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        82,
        NULL,
        '2025-02-19 09:55:17',
        '0',
        NULL,
        NULL,
        'car_driver',
        'operate',
        '1',
        'operate',
        '操作',
        '0',
        162,
        NULL,
        '0',
        'left',
        '1',
        8
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        83,
        NULL,
        '2025-03-07 14:35:47',
        '0',
        NULL,
        NULL,
        'sys_form',
        'content',
        '1',
        'content',
        '表单代码',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        1
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        84,
        NULL,
        '2025-03-07 14:35:47',
        '0',
        NULL,
        NULL,
        'sys_form',
        'create_time',
        '1',
        'createTime',
        '创建时间',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        5
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        85,
        NULL,
        '2025-03-07 14:35:47',
        '0',
        NULL,
        NULL,
        'sys_form',
        'form_conf',
        '1',
        'formConf',
        '表单配置',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        2
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        86,
        NULL,
        '2025-03-07 14:35:47',
        '0',
        NULL,
        NULL,
        'sys_form',
        'form_data',
        '1',
        'formData',
        '表单内容',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        3
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        87,
        NULL,
        '2025-03-07 14:35:47',
        '0',
        NULL,
        NULL,
        'sys_form',
        'generate_conf',
        '1',
        'generateConf',
        '生成配置',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        4
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        88,
        NULL,
        '2025-03-07 10:13:55',
        '0',
        NULL,
        NULL,
        'sys_form',
        'name',
        '1',
        'name',
        '表单名称',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        0
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        89,
        NULL,
        '2025-03-08 16:20:44',
        '0',
        NULL,
        NULL,
        'sys_form',
        'update_time',
        '1',
        'updateTime',
        '更新时间',
        '0',
        130,
        NULL,
        '0',
        'left',
        '1',
        6
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        90,
        NULL,
        '2025-03-08 16:20:37',
        '0',
        NULL,
        NULL,
        'sys_form',
        'operate',
        '1',
        'operate',
        '操作',
        '0',
        229,
        NULL,
        '0',
        'left',
        '1',
        7
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        91,
        '2025-03-08 14:59:21',
        '2025-03-08 14:59:21',
        '0',
        NULL,
        NULL,
        'sys_form',
        'data_count',
        '1',
        'dataCount',
        '数据量',
        '0',
        80,
        NULL,
        '0',
        'left',
        '1',
        0
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        92,
        NULL,
        '2025-03-23 13:55:24',
        '0',
        NULL,
        NULL,
        'student_info',
        'class_name',
        '1',
        'className',
        '班级',
        '0',
        92,
        NULL,
        '0',
        'left',
        '1',
        3
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        93,
        NULL,
        '2025-03-23 13:55:27',
        '0',
        NULL,
        NULL,
        'student_info',
        'date_of_birth',
        '1',
        'dateOfBirth',
        '出生日期',
        '0',
        120,
        NULL,
        '0',
        'left',
        '1',
        4
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        94,
        NULL,
        '2025-03-23 13:55:30',
        '0',
        NULL,
        NULL,
        'student_info',
        'email',
        '1',
        'email',
        '电子邮箱',
        '0',
        184,
        NULL,
        '0',
        'left',
        '1',
        5
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        95,
        NULL,
        '2025-03-23 13:55:19',
        '0',
        NULL,
        NULL,
        'student_info',
        'gender',
        '1',
        'gender',
        '性别',
        '0',
        80,
        NULL,
        '0',
        'left',
        '1',
        2
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        96,
        NULL,
        '2025-03-23 13:55:42',
        '0',
        NULL,
        NULL,
        'student_info',
        'major',
        '1',
        'major',
        '专业',
        '0',
        131,
        NULL,
        '0',
        'left',
        '1',
        1
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        97,
        NULL,
        '2025-03-23 13:55:13',
        '0',
        NULL,
        NULL,
        'student_info',
        'name',
        '1',
        'name',
        '姓名',
        '0',
        93,
        NULL,
        '0',
        'left',
        '1',
        0
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        98,
        NULL,
        '2025-03-23 13:55:35',
        '0',
        NULL,
        NULL,
        'student_info',
        'phone_number',
        '1',
        'phoneNumber',
        '联系电话',
        '0',
        112,
        NULL,
        '0',
        'left',
        '1',
        6
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        99,
        NULL,
        '2025-03-23 13:55:37',
        '0',
        NULL,
        NULL,
        'student_info',
        'update_time',
        '1',
        'updateTime',
        '更新时间',
        '0',
        113,
        NULL,
        '0',
        'left',
        '1',
        7
    );

INSERT INTO
    `sys_table` (
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`,
        `update_by`,
        `update_by_name`,
        `table_name`,
        `field_name`,
        `show`,
        `prop`,
        `label`,
        `sortable`,
        `width`,
        `label_tip`,
        `fixed`,
        `align`,
        `tooltip`,
        `sequence`
    )
VALUES (
        100,
        NULL,
        '2025-03-23 13:55:13',
        '0',
        NULL,
        NULL,
        'student_info',
        'operate',
        '1',
        'operate',
        '操作',
        '0',
        150,
        NULL,
        '0',
        'left',
        '1',
        8
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
    `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
    `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
    `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
    `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '00' COMMENT '用户类型（00系统用户）',
    `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户邮箱',
    `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '手机号码',
    `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
    `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '头像地址',
    `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '密码',
    `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
    `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '最后登录IP',
    `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
    `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
    `update_time` datetime DEFAULT NULL COMMENT '更新时间',
    `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;

INSERT INTO
    `sys_user` (
        `user_id`,
        `dept_id`,
        `user_name`,
        `nick_name`,
        `user_type`,
        `email`,
        `phonenumber`,
        `sex`,
        `avatar`,
        `password`,
        `status`,
        `del_flag`,
        `login_ip`,
        `login_date`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        1,
        103,
        'admin',
        '超级管理员',
        '00',
        'admin@163.com',
        '18000006666',
        '0',
        'https://jinqiao-product.oss-cn-beijing.aliyuncs.com/category_image/1740240551.285219.jpg',
        '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2',
        '0',
        '0',
        '127.0.0.1',
        '2025-04-09 14:39:45',
        'admin',
        '2024-11-13 14:12:02',
        'admin',
        '2025-02-23 00:09:11',
        '管理员'
    );

INSERT INTO
    `sys_user` (
        `user_id`,
        `dept_id`,
        `user_name`,
        `nick_name`,
        `user_type`,
        `email`,
        `phonenumber`,
        `sex`,
        `avatar`,
        `password`,
        `status`,
        `del_flag`,
        `login_ip`,
        `login_date`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        2,
        105,
        'niangao',
        '年糕',
        '00',
        'niangao@qq.com',
        '15666666666',
        '1',
        '/profile/avatar/2025/02/20/avatar_20250220224630A784.png',
        '$2b$12$0XLJYiQ6Cg2MVULa2xCwMOqZWwR4fwK2IoMSFgItPbvJ73DLg83lK',
        '0',
        '0',
        '127.0.0.1',
        '2025-03-04 15:53:31',
        'admin',
        '2024-11-13 14:12:02',
        'niangao',
        '2025-02-20 22:46:31',
        '测试员'
    );

INSERT INTO
    `sys_user` (
        `user_id`,
        `dept_id`,
        `user_name`,
        `nick_name`,
        `user_type`,
        `email`,
        `phonenumber`,
        `sex`,
        `avatar`,
        `password`,
        `status`,
        `del_flag`,
        `login_ip`,
        `login_date`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        115,
        105,
        'richard',
        'Richard',
        '00',
        '988550796@qq.com',
        '18000008888',
        '0',
        '',
        '$2b$12$s.xBqbikFcInhfxa4Lb5we8VX55AY3uYOdBLO5d2LtlgEldH.ixQ6',
        '0',
        '0',
        '',
        '2025-02-26 08:07:34',
        'admin',
        '2024-11-16 10:06:31',
        'admin',
        '2025-02-20 22:14:12',
        NULL
    );

INSERT INTO
    `sys_user` (
        `user_id`,
        `dept_id`,
        `user_name`,
        `nick_name`,
        `user_type`,
        `email`,
        `phonenumber`,
        `sex`,
        `avatar`,
        `password`,
        `status`,
        `del_flag`,
        `login_ip`,
        `login_date`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        117,
        NULL,
        '18010476403',
        '18010476403',
        '00',
        '',
        '18010476403',
        '2',
        '',
        '$2b$12$GqXPcZvTsVo7L1JePwxgiuQg3tV6OhiCHmyLlsBJM52wNTV0NEEke',
        '0',
        '2',
        '',
        '2024-11-16 15:29:40',
        '',
        '2024-11-16 10:22:45',
        'admin',
        '2025-01-20 10:45:39',
        NULL
    );

INSERT INTO
    `sys_user` (
        `user_id`,
        `dept_id`,
        `user_name`,
        `nick_name`,
        `user_type`,
        `email`,
        `phonenumber`,
        `sex`,
        `avatar`,
        `password`,
        `status`,
        `del_flag`,
        `login_ip`,
        `login_date`,
        `create_by`,
        `create_time`,
        `update_by`,
        `update_time`,
        `remark`
    )
VALUES (
        118,
        100,
        'ad',
        'a',
        '00',
        '',
        '',
        '0',
        '',
        '$2b$12$eYddc4x9tSA5rtdOH2HuMOBC0TZWVX0jUKBTkg9nsrXnQfQk7jsOy',
        '0',
        '0',
        '',
        '2025-03-13 13:31:44',
        'admin',
        '2025-03-13 13:31:27',
        'admin',
        '2025-03-13 13:32:23',
        NULL
    );

COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `post_id` bigint NOT NULL COMMENT '岗位ID',
    PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;

INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 1);

INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (2, 2);

INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (115, 3);

COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
    `user_id` bigint NOT NULL COMMENT '用户ID',
    `role_id` bigint NOT NULL COMMENT '角色ID',
    PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (1, 1);

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (2, 2);

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (115, 2);

INSERT INTO `sys_user_role` (`user_id`, `role_id`) VALUES (118, 2);

COMMIT;

-- ----------------------------
-- Table structure for user_wechat
-- ----------------------------
DROP TABLE IF EXISTS `user_wechat`;

CREATE TABLE `user_wechat` (
    `user_id` int NOT NULL COMMENT '用户ID',
    `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市',
    `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '国家',
    `head_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信头像',
    `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '微信昵称',
    `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openid',
    `union_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'union_id',
    `user_phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
    `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '省份',
    `sex` int DEFAULT NULL COMMENT '性别',
    `id` int NOT NULL AUTO_INCREMENT,
    `create_time` datetime NOT NULL COMMENT '创建时间',
    `update_time` datetime NOT NULL COMMENT '更新时间',
    `del_flag` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `openid` (`openid`) USING BTREE,
    UNIQUE KEY `user_phone` (`user_phone`) USING BTREE,
    KEY `ix_user_wechat_update_time` (`update_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户微信信息';

-- ----------------------------
-- Records of user_wechat
-- ----------------------------
BEGIN;

INSERT INTO
    `user_wechat` (
        `user_id`,
        `city`,
        `country`,
        `head_img_url`,
        `nickname`,
        `openid`,
        `union_id`,
        `user_phone`,
        `province`,
        `sex`,
        `id`,
        `create_time`,
        `update_time`,
        `del_flag`
    )
VALUES (
        117,
        NULL,
        NULL,
        NULL,
        NULL,
        'oxMx-6-s6NINAgtFYTg9B_x_99co',
        'ol0Yu65bafiDx5ltVOkE8HKwU0yg',
        '18010476403',
        NULL,
        NULL,
        14,
        '2024-11-16 10:23:09',
        '2024-11-16 10:23:09',
        '0'
    );

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
