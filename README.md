# DuReader

## Introduction
机器阅读理解(Machine Reading Comprehension)是指让机器阅读文本，然后回答和阅读内容相关的问题。阅读理解是自然语言处理和人工智能领域的重要前沿课题，对于提升机器智能水平、使机器具有持续知识获取能力具有重要价值，近年来受到学术界和工业界的广泛关注。

在智能搜索问答等产品中，针对用户输入的观点型问题，搜索引擎首先会检索相关候选文档，然后从候选文档中抽取出能够回答用户问题的答案段落摘要，最后给出答案段落摘要所包含的是非观点。本次任务聚焦于预测答案段落摘要中所表述的是非观点极性。

![image](https://user-images.githubusercontent.com/28379709/78227660-2cc85e00-7500-11ea-8b5e-2965af5f159b.png)

## Data

数据集范围：所有问题均为搜索引擎中按照用户行为分布的观点类的问题，对应的文档为搜索引擎搜索出来的网页，答案片段摘要是经过人工标注的回答此问题的答案片段，是非观点极性是此答案片段摘要相对于问题的观点极性。

是非观点极性：所有极性均在{“ Yes”, “No“, “Depends“}集合中，对应的含义为：

Yes：肯定观点，肯定观点指的是答案给出了较为明确的肯定态度。有客观事实的从客观事实的角度出发，主观态度类的从答案的整体态度来判断。

No：否定观点，否定观点通常指的是答案较为明确的给出了与问题相反的态度。

Depends：无法确定/分情况，主要指的是事情本身存在多种情况，不同情况下对应的观点不一致；或者答案本身对问题表示不确定，要具体具体情况才能判断。

数据样例：
![image](https://user-images.githubusercontent.com/28379709/78228349-2ab2cf00-7501-11ea-85ba-72f930e86ee8.png)

## Modeling

### Baseline 
仅用Answer + Bert fine-tuning： ![image](https://user-images.githubusercontent.com/28379709/78228703-a14fcc80-7501-11ea-8eb0-1dbe34a72b8f.png) 

Question + Answer + Ernie fine-tuning: ![image](https://user-images.githubusercontent.com/28379709/79554824-342b6200-80d1-11ea-9b1b-ed1322df0727.png)
