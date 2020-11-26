<template>
    <!-- 顶部导航开始 -->
    <div class="MFWheader">
      <div class="MFWLG">
        <router-link to="/" class="logo"></router-link>
      </div>
      <div class="search-hd">
        <form class="searchBOX-hd" @click="search">
          <input type="text" placeholder="搜索目的地/攻略/游记">
          <button></button>
        </form>
      </div>
    </div>
    <!-- 顶部导航结束 -->
</template>
<style scoped>
    .search-hd input{
        padding-right: 24px;
        width: 222.05px;
    }
    .search-hd button{
        position: absolute;
        left: 321px;
        background:url(../assets/image/btn_search2.png) center center no-repeat;
        background-size:1.2rem;
    }
</style>

<script>
export default {
    name:'Title',
    data(){
        return{

        }
    },
    methods:{
        search(){
            
        }
    }
}
</script>

