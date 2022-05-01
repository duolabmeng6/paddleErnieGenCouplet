# paddleErnieGenCouplet 帮助文档

<p align="center" class="flex justify-center">
    <a href="https://www.serverless-devs.com" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=paddleErnieGenCouplet&type=packageType">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=paddleErnieGenCouplet" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=paddleErnieGenCouplet&type=packageVersion">
  </a>
  <a href="http://www.devsapp.cn/details.html?name=paddleErnieGenCouplet" class="ml-1">
    <img src="http://editor.devsapp.cn/icon?package=paddleErnieGenCouplet&type=packageDownload">
  </a>
</p>

<description>

> ***本应用基于百度开源的 PaddlePaddle 项目，ernie_gen_couplet采用开源对联数据集进行微调，输入上联，可生成下联。***

</description>

<table>

## 前期准备
使用该项目，推荐您拥有以下的产品权限 / 策略：

| 服务/业务 | 函数计算 |     
| --- |  --- |   
| 权限/策略 | AliyunFCFullAccess</br>AliyunContainerRegistryFullAccess |     


</table>

<codepre id="codepre">

# 代码 & 预览

- [:smiley_cat: 源代码](https://github.com/duolabmeng6/paddleErnieGenCouplet)

        

</codepre>

<deploy>

## 部署 & 体验

<appcenter>

- :fire: 通过 [Serverless 应用中心](https://fcnext.console.aliyun.com/applications/create?template=paddleErnieGenCouplet) ，
[![Deploy with Severless Devs](https://img.alicdn.com/imgextra/i1/O1CN01w5RFbX1v45s8TIXPz_!!6000000006118-55-tps-95-28.svg)](https://fcnext.console.aliyun.com/applications/create?template=paddleErnieGenCouplet)  该应用。 

</appcenter>

- 通过 [Serverless Devs Cli](https://www.serverless-devs.com/serverless-devs/install) 进行部署：
    - [安装 Serverless Devs Cli 开发者工具](https://www.serverless-devs.com/serverless-devs/install) ，并进行[授权信息配置](https://www.serverless-devs.com/fc/config) ；
    - 初始化项目：`s init paddleErnieGenCouplet -d paddleErnieGenCouplet`   
    - 进入项目，并进行项目部署：`cd paddleErnieGenCouplet && s deploy -y`

</deploy>

<appdetail id="flushContent">

# 应用详情

大家可以通过本项目提供的镜像，快速发布成可调用的Restful API服务。

# [ernie_gen_couplet](https://github.com/PaddlePaddle/PaddleHub/tree/release/v2.2/modules/text/text_generation/ernie_gen_couplet)

| 模型名称            | ernie_gen_couplet |
| :------------------ | :---------------: |
| 类别                |   文本-文本生成   |
| 网络                |     ERNIE-GEN     |
| 数据集              |  开源对联数据集   |
| 是否支持Fine-tuning |        否         |
| 模型大小            |       421M        |
| 最新更新日期        |    2021-02-26     |
| 数据指标            |         -         |

## 一、模型基本信息

- 模型介绍
  - ERNIE-GEN 是面向生成任务的预训练-微调框架，首次在预训练阶段加入span-by-span 生成任务，让模型每次能够生成一个语义完整的片段。在预训练和微调中通过填充式生成机制和噪声感知机制来缓解曝光偏差问题。此外, ERNIE-GEN 采样多片段-多粒度目标文本采样策略, 增强源文本和目标文本的关联性，加强了编码器和解码器的交互。
  - ernie_gen_couplet采用开源对联数据集进行微调，输入上联，可生成下联。

<p align="center">
<img src="https://user-images.githubusercontent.com/76040149/133191670-8eb1c542-f8e8-4715-adb2-6346b976fab1.png"  width="600" hspace='10'/>
</p>


## 调用方法

```python
import requests
import json

def getResult(text):
    data = {"texts": text, "beam_width": 1, "use_gpu":False}
    r = requests.post("http://127.0.0.1:9000/predict/ernie_gen_couplet", data=json.dumps(data),
                        headers={'Content-Type': 'application/json'})
    return json.dumps(r.json(), indent=4, ensure_ascii=False)

print(getResult(["人增福寿年增岁", "风吹云乱天垂泪"]))

```

```json
{
    "msg": "",
    "results": [
        [
            "春满乾坤喜满门",
            "竹报平安梅报春",
            "春满乾坤福满门",
            "春满乾坤酒满樽",
            "春满乾坤喜满家"
        ],
        [
            "雨打花残地痛心",
            "雨打花残地皱眉",
            "雨打花残地动容",
            "雨打霜欺地动容",
            "雨打花残地洒愁"
        ]
    ],
    "status": "000"
}
```

## 本应用的镜像开发教程

https://github.com/duolabmeng6/paddlehub_ppocr

阅读本文你将学会：

在 Serverless 架构中 docker 镜像制作的最佳实践，游刃有余的部署复杂场景下的深度学习模型

熟练的使用各厂商提供的 Serverless 服务，部署。

制作小巧精良的 docker 镜像

</appdetail>

<devgroup>

## 开发者社区

您如果有关于错误的反馈或者未来的期待，您可以在 [Serverless Devs repo Issues](https://github.com/serverless-devs/serverless-devs/issues) 中进行反馈和交流。如果您想要加入我们的讨论组或者了解 FC 组件的最新动态，您可以通过以下渠道进行：

<p align="center">

| <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407298906_20211028074819117230.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407044136_20211028074404326599.png" width="130px" > | <img src="https://serverless-article-picture.oss-cn-hangzhou.aliyuncs.com/1635407252200_20211028074732517533.png" width="130px" > |
|--- | --- | --- |
| <center>微信公众号：`serverless`</center> | <center>微信小助手：`xiaojiangwh`</center> | <center>钉钉交流群：`33947367`</center> | 

</p>

</devgroup>