<template>
  <div>
    <!-- 引入头部组件 -->
    <findheader></findheader>
    <!-- 详情 -->
    <div>
      <div class="find_position">
        <!-- 搜索框 -->
        <div class="find_find">
          <!-- 搜索文本框 -->
          <input class="find_input" placeholder="搜索目的地" readonly>
        </div>
        <!-- 顶部图片 -->
        <div class="find_bg">
          <!-- 插图图片 -->
          <img src="../assets/image/find/CoUBGV28HDuALpzxABR490kDN0M39.jpeg">
          <!-- 跳转 -->
          <router-link to="/">
            <!-- 图片标题 -->
            <div>
              <p>神仙海岛的三款热门玩法，去普吉一定不能错过</p><span></span>
            </div>
          </router-link>
        </div>
      </div>
      <!-- body详情 -->
      <div class="find_destination">
        <!-- 热门目的地 -->
        <div class="find_recommend">
          <!-- 目的地 -->
          <router-link to="/">
              <div>
                <div class="find_fire">
                  <h1>热门目的地</h1><span></span>
                </div>
                <p>最受大家喜欢的目的地推荐</p>
              </div>
          </router-link>
        </div>
      </div>
    </div>
    <!-- 目的地导航 -->
    <div class="find_overflow">
      <div class="find_navbar">
        <!-- 导航开始 -->
        <mt-navbar v-model="choose">
          <mt-tab-item id="China" class="China">
            国内<p></p>
          </mt-tab-item>
          <mt-tab-item id="Hong_Kong" class="Hong_Kong">
            港澳台<p></p>
          </mt-tab-item>
          <mt-tab-item id="Japan" class="Japan">
            日韩<p></p>
          </mt-tab-item>
          <mt-tab-item id="Southeast_Asia" class="Southeast_Asia">
            东南亚<p></p>
          </mt-tab-item>
          <mt-tab-item id="South_Asia" class="South_Asia">
            南亚 西亚<p></p>
          </mt-tab-item>
          <mt-tab-item id="Europe" class="Europe">
            欧洲 美洲<p></p>
          </mt-tab-item>
          <mt-tab-item id="Australia" class="Australia">
            澳洲 非洲<p></p>
          </mt-tab-item>
        </mt-navbar>
        <!-- 导航结束 -->
      </div>
    </div>
    <div class="find_starnav">
      <!-- 导航部分开始 -->
      <mt-tab-container v-model="choose">
        <mt-tab-container-item id="China">
          <div class="find_form" v-for="(index,item) of find_china" :key="item">
            <router-link to="/find">
              <div class="find_item">
                <img :src="require(`../assets/image/find/${index.cityphoto}`)" >
                <p>{{index.city}}</p>
              </div>
            </router-link>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="Hong_Kong">
            2
        </mt-tab-container-item>
        <mt-tab-container-item id="Japan">
            3
        </mt-tab-container-item>
        <mt-tab-container-item id="Southeast_Asia">
            4
        </mt-tab-container-item>
        <mt-tab-container-item id="South_Asia">
            5
        </mt-tab-container-item>
        <mt-tab-container-item id="Europe">
            6
        </mt-tab-container-item>
        <mt-tab-container-item id="Australia">
            7
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
  </div>
</template>

<script>
  import findheader from '../components/Find_header.vue'

  export default {
    data(){
      return{
        choose:"China",
        find_china:[]
      }
    },
    mounted(){
      this.axios.get('/find').then(res=>{
        this.find_china = res.data.cityInfo
        console.log(this.find_china)
      })
    },
    components:{
      findheader
    }
  }
</script>
