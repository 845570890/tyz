<template>
    <div
      class="main">
      <!-- infinite-scroll-distance="20" -->
      <!-- v-infinite-scroll="loadMore" -->
      <!-- infinite-scroll-disabled="busy" -->
      <!-- :infinite-scroll-immediate-check="true" -->
    <!-- > -->
      <!-- 推荐攻略 -->
          <div class="guideflow" :class="{'is_fixed':isFixed}" id="boxFixed">
              推荐攻略
          </div>
          <!-- 单一文章信息开始 -->
          <div v-for="(article, index) of articles" :key="index">
            <router-link to="/details">
              <!-- 文章标题开始 -->
              <div class="articleItem-header">
                {{article.subject}}
                <!-- 哈瓦那 | 地球另一端，咖啡香与烟草味 -->
              </div>
              <!-- 文章标题结束 -->
              <!-- 文章图文信息开始 -->
              <div class="articleItem-wrapper">
                <!-- 文章图像开始  -->
                <!-- <div class="articleImg" v-if="article.image != null"> -->
                <div>
                  <img :src="require(`../assets/images/articles/mm/`+article.image)" />
                  <!-- <img src="../assets/images/articles/mm/CoUBXl-lb5WAZKXeAA8s5Q-lSM8548.png" alt=""> -->
                </div>
                <!-- 文章图像结束 -->
                <!-- 文章简介开始 -->
                <div class="articleDes">
                  <span class="summary">
                    {{article.description}}
                    <!-- 该说说古巴了🇨🇺6月12号那天，整个朋友圈因为我大杰伦儿的新歌Mojito又热闹了一把。作为从周董出道就开始每首歌每盘专辑不落下的铁杆“夕阳红”粉丝，不管好不好听，花三块钱买首歌还是不为难的～不，肯定好听，必定好听，我大杰伦儿的歌怎么会不好 -->
                  </span>
                  <div class="author">
                    <span>10288浏览</span>
                    <div>
                      <span>{{article.nickname}}</span>
                      <!-- <span>Cecilia Z</span> -->
                      <img :src="require('../assets/images/articles/mm/'+article.avatar)"/>
                      <!-- <img src="../assets/images/articles/mm/CoUBGV4MP5WACSnMAAC7wW7f_E815.jpeg" alt=""> -->
                    </div>   
                  </div>
                </div>
                <!-- 文章简介结束 -->
              </div>
              <!-- 文章图文信息结束 -->
            </router-link>
          </div>
          <!-- 单一文章信息结束 -->
    </div>
    <!-- 面板区域结束 -->
          
  
</template>
<style scoped>
  .is_fixed{
    position: fixed;
    top:0;
    background: #fff;
    width: 100%;
    z-index: 999;
  }
</style>
<script>
export default {
  data(){
    return{
      isFixed:false,
      offsetTop:0,
      // 用于存储服务器返回结果
      articles: []

    }
  },
  mounted(){
    window.addEventListener('scroll',this.initHeight)
    this.$nextTick(()=>{
      this.offsetTop=document.getElementById("boxFixed").offsetTop
    })
    //获取URL的参数
    let aid = this.$route.params.aid;
    // 向服务器发送请求,以获取数据
    this.axios.get('/articles').then(res=>{
        this.articles = res.data.articles;
        // console.log(this.articles)
        // this.articles.image=require('../assets/images/articles/mm/'+this.articles.image);
        // console.log(this.articles.image)
        // this.articles.avatar=require('../assets/images/articles/mm/'+article.avatar);
    })
  },
  methods:{
    initHeight(){
      var scrollTop=window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop
      this.isFixed=scrollTop>this.offsetTop?true:false
    }
  },
  destroyed(){
    window.removeEventListener('scroll', this.handleScroll)
  }
}
</script>


