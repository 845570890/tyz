<template>
<div>
    <!-- header -->
    <!-- <div class="head">
        <router-link to="/">
            <div class="logo20"></div>
        </router-link>
        <router-link to="/">
            <div class="head2">官网首页</div>
        </router-link>
        <router-link to="/">
            <div class="search"></div>
        </router-link>
    </div> -->
    <findheader></findheader>
    <!-- head结束 -->
    <!-- 内容部分开始 -->
    <div class="main">
    <!-- 搜索框开始 -->
        <div class="searchbox">
            <div class="searchinput">
                <img src="../assets/image/serach1.png">
                <a>搜索产品名称/目的地</a>
            </div>
        </div>
    <!-- 搜索框结束 -->
    <!-- 轮播图开始 -->
    <div class="swipe">
      <mt-swipe :auto="4000">
        <mt-swipe-item><img src="../assets/image/wKgBZ1lQ4xCAN_0GAAGB1uhlaoU51.jpeg"></mt-swipe-item>
        <mt-swipe-item><img src="../assets/image/wKgBs1hOf_GAdpB3AAF3xV1Qk4829.jpeg"></mt-swipe-item>
        <mt-swipe-item><img src="../assets/image/wKgBs1hXpweAMBTIAAPqcgR5mVY25.jpeg"></mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 轮播图结束 -->
    <!-- 品类选项卡开始 -->
    <div class="category">
        <!-- 品类第一行开始 -->
        <div class="category1">
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e66GSAHL4EAAANMuKo3uw227.png"></div>
                    <p>景点门票</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e8DtuAL072AAANFc-mbTU587.png"></div>
                    <p>一日游</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e8D9mAOagmAAALsBHRmTA476.png"></div>
                    <p>酒店套餐</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e66nqAWowMAAANvhXlocM209.png"></div>
                    <p>WiFi</p>  
                </router-link>
            </div>
        </div>
        <!-- 品类第一行结束 -->
        <!-- 品类第二行开始 -->
        <div class="category1">
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e8DxyAEGlrAAAOV4m9fgU361.png"></div>
                    <p>演出展览</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e8Dy6ANf2zAAAOQDkr9h0173.png"></div>
                    <p>接送机</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e68yyAOunPAAALzO7l4OM536.png"></div>
                    <p>电话卡</p>  
                </router-link>
            </div>
            <div>
                <router-link to="/">
                    <div><img src="../assets/image/wKgBs1e8D0yAFrvYAAALeK_2ZPo816.png"></div>
                    <p>交通卡</p>  
                </router-link>
            </div>
        </div>
        <!-- 品类第二行结束 -->
    </div>
    <!-- 品类下方指示器开始 -->
    <!-- 品类下方指示器结束 -->
    <!-- 品类选项卡结束 -->
    <!-- 指示器下方阴影开始 -->
    <div class="shadows"></div>
    <!-- 指示器下方阴影开始 -->
    <!-- 地区选项卡开始 -->
    <div class="region">
        <mt-navbar v-model="active">
            <mt-tab-item id="1"><span class="c1">热门</span></mt-tab-item>
            <mt-tab-item id="2"><span class="c1">东南亚</span></mt-tab-item>
            <mt-tab-item id="3"><span class="c1">欧美澳</span></mt-tab-item>
            <mt-tab-item id="4"><span class="c1">国内</span></mt-tab-item>
        </mt-navbar>  
    </div>
    <!-- 地区选项卡结束 -->
    <!-- 面板开始 -->
    <div class="main">
      <mt-tab-container v-model="tab">
        <mt-tab-container-item id="ab">
            <div class="main_hot">
            <div class="hot">
                <router-link to="/">普吉岛</router-link>
                <router-link to="/">日本</router-link>
                <router-link to="/">三亚</router-link>
                <router-link to="/">丽江</router-link>
            </div>
            <div class="hot">
                <router-link to="/">台湾</router-link>
                <router-link to="/">香港</router-link>
                <router-link to="/">哈尔滨</router-link>
                <router-link to="/">首尔</router-link>
            </div>
            <div class="hot">
                <router-link to="/">新加坡</router-link>
                <router-link to="/">上海</router-link>
                <router-link to="/">沙巴</router-link>
                <router-link to="/">桂林</router-link>
            </div>
            </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="cd">
            <div class="main_hot">
            <div class="hot">
                <router-link to="/">泰国</router-link>
                <router-link to="/">新加坡</router-link>
                <router-link to="/">马来西亚</router-link>
                <router-link to="/">越南</router-link>
            </div>
            <div class="hot">
                <router-link to="/">巴厘岛</router-link>
                <router-link to="/">菲律宾</router-link>
                <router-link to="/">柬埔寨</router-link>
                <router-link to="/">兰卡威</router-link>
            </div>
            <div class="hot">
                <router-link to="/">芽庄</router-link>
                <router-link to="/">斯里兰卡</router-link>
                <router-link to="/">曼谷</router-link>
                <router-link to="/">沙巴</router-link>
            </div>
            </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="ef">
            <div class="main_hot">
            <div class="hot">
                <router-link to="/">美国</router-link>
                <router-link to="/">西班牙</router-link>
                <router-link to="/">迪拜</router-link>
                <router-link to="/">帕劳</router-link>
            </div>
            <div class="hot">
                <router-link to="/">澳大利亚</router-link>
                <router-link to="/">新西兰</router-link>
                <router-link to="/">法国</router-link>
                <router-link to="/">意大利</router-link>
            </div>
            <div class="hot">
                <router-link to="/">英国</router-link>
                <router-link to="/">毛里求斯</router-link>
                <router-link to="/">悉尼</router-link>
                <router-link to="/">黄金海岸</router-link>
            </div>
            </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="gh">
            <div class="main_hot">
            <div class="hot">
                <router-link to="/">云南</router-link>
                <router-link to="/">长白山</router-link>
                <router-link to="/">四川</router-link>
                <router-link to="/">西安</router-link>
            </div>
            <div class="hot">
                <router-link to="/">厦门</router-link>
                <router-link to="/">张家界</router-link>
                <router-link to="/">桂林</router-link>
                <router-link to="/">浙江</router-link>
            </div>
            <div class="hot">
                <router-link to="/">雪乡</router-link>
                <router-link to="/">北京</router-link>
                <router-link to="/">珠海</router-link>
                <router-link to="/">漠河</router-link>
            </div>
            </div>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 自由行攻略阴影开始 -->
    <div class="shadows"></div>
    <!-- 自由行攻略阴影结束 -->
    <!-- 自由行标题开始 -->
    <div class="title">
        <div class="title_orange"></div>
        <strong class="title_text">自由行攻略</strong>
    </div>
    <!-- 自由行标题结束 -->
    <!-- 自由行内容开始 -->
    <!-- 大图部分 -->
    <div class="content">
        <router-link to="/">
            <div><img src="../assets/image/wKgBZ1i5OImAQyseAACzRyMASOo96.jpeg"></div>
        </router-link>
    </div>
    <div class="con">
        <router-link to="/">
            <div class="content_one">
                    <img src="../assets/image/地址.png">北京
            </div>
            <div class="content_two">京城十大胡同｜不当一回胡同串子，你算白来北京了（附四合院特色餐厅推荐）</div>
            <div class="content_three">412637人体验过</div>
            <div class="content_four"></div>
        </router-link>
    </div>
    <!-- 小图部分 -->
    <div class="small">
        <ul>
            <li  v-for="n of 3" :key="n">
                <router-link to="/">
                    <div class="photo">
                        <img src="../assets/image/wKgBEFtpGASAJOtVAAPF6ISG8TU438.gif">
                    </div>
                    <div class="box">
                        <div>澳大利亚3/50日自由行路书自驾游全境定制 （行程+酒店+租车+自驾路书全攻略+全程微信客服）</div>
                        <p>
                            <span>￥</span>
                            <strong>7600</strong>起/人
                        </p>
                    </div>
                </router-link>
            </li>
            
        </ul>
    </div>
    <!-- 自由行攻略内容结束 -->
    <div class="shadows"></div>
    <!-- 当季热卖标题 -->
    <div class="title">
        <div class="title_orange"></div>
        <strong class="title_text">当季热卖</strong>
    </div>
    <!-- 当季热卖标题结束 -->
    <!-- 当季热卖选项卡开始 -->
    <div class="hot_sale">
      <mt-navbar v-model="actives">
            <mt-tab-item id="1"><span class="s1">普吉岛</span></mt-tab-item>
            <mt-tab-item id="2"><span class="s1">日本</span></mt-tab-item>
            <mt-tab-item id="3"><span class="s1">三亚</span></mt-tab-item>
            <mt-tab-item id="4"><span class="s1">丽江</span></mt-tab-item>
            <mt-tab-item id="5"><span class="s1">台湾</span></mt-tab-item>
            <mt-tab-item id="6"><span class="s1">香港</span></mt-tab-item>
            <mt-tab-item id="7"><span class="s1">哈尔滨</span></mt-tab-item>
            <mt-tab-item id="8"><span class="s1">首尔</span></mt-tab-item>
        </mt-navbar>  
    </div>
    <!-- 当季热卖选项卡开始 -->
    <!-- 面板开始 -->
    <div class="mains">
      <mt-tab-container v-model="tabs">
        <mt-tab-container-item id="1">
            <div class="pjd">
                <div class="pjd1">
                    <img src="../assets/image/wKgED1v-ENqASkAlAD6lcZSUwXc726.gif">
                    <div class="img_text">
                        <span class="left">普吉岛</span>
                        <span class="right">SPA/按摩</span>
                    </div>
                </div>
                <div class="pjd2">
                    <div class="titles">【可订今日 中文接待】 泰国普吉岛蘭/兰Orchid Spa 兰花spa按摩 （2小时急单+独立卫浴+人妖皇后中文接待+6大海滩免费接送+接送可换酒店+可送到江西冷和西蒙+多种组合可选）</div>
                    <div class="tags">
                        <span>包接送</span>
                        <span>可接急单</span>
                        <span>独立房间</span>
                    </div>
                    <div class="price">
                        <span>￥</span>
                        <strong>64</strong>
                        <p>起</p>
                        <div>已售2158</div>
                    </div>
                </div>
            </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">2</mt-tab-container-item>
        <mt-tab-container-item id="3">3</mt-tab-container-item>
        <mt-tab-container-item id="4">4</mt-tab-container-item>
        <mt-tab-container-item id="5">5</mt-tab-container-item>
        <mt-tab-container-item id="6">6</mt-tab-container-item>
        <mt-tab-container-item id="7">7</mt-tab-container-item>
        <mt-tab-container-item id="8">8</mt-tab-container-item>
      </mt-tab-container>
    </div>
    <!-- 面板结束 -->
    <!-- 查看更多产品-->
    <div class="more">
        <router-link to="/"><div class="more_text">查看更多产品</div></router-link>
    </div>
    <!-- 内容部分结束 -->
    </div>
</div>
</template>
<script>
import findheader from '../components/Find_header.vue'

export default {
    data() {
    return {
      active: "1",
      tab:"ab",
      actives:"1",
      tabs:"1"
    }
  },
  components:{
      findheader
    },
  watch:{
      active(newValue) {
      if (newValue == "1") {
        this.tab = "ab";
      } else if (newValue == "2") {
        this.tab = "cd";
      } else if (newValue == "3") {
        this.tab = "ef";
      } else {
        this.tab = "gh";
      }
    },
    actives(newValues){
        if(newValues){
           if(newValues == "1"){
               this.tabs = "1";
           }else if(newValues == "2"){
               this.tabs = "2";
           }else if(newValues == "3"){
               this.tabs = "3";
           }else if(newValues == "4"){
               this.tabs = "4";
           }else if(newValues == "5"){
               this.tabs = "5";
           }else if(newValues == "6"){
               this.tabs = "6";
           }else if(newValues == "7"){
               this.tabs = "7";
           }else{
               this.tabs = "8";
           }
        }
      }
    } 
}
</script>