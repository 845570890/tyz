<template>
  <div>
    <!-- 正式内容 -->
    <div class="joinus">
      <div class="job">
        <div class="job-text">
          <span class="social">社会招聘</span>
          <div></div>
        </div>
        <ul>
          <!-- 职位循环 数据库 -->
          <li class="zhiwei" v-for="(index,item) of jobinfo" :key="item">
            <router-link to="">
              <div class="zwtype">
                <div>{{index.jtype}}</div>
                <div>{{index.jnumber}}个职位正在招聘</div>
              </div>
              <span >查看</span>
            </router-link>
          </li>
          <li class="alljobs">
            <a href="https://app.mokahr.com/m/apply/mafengwo1/173#/jobs">查看全部职位</a>
          </li>
        </ul>
      </div>
      <div class="powerd-by">
        <a href="http://www.mokahr.com/" target="_blank"></a>
      </div> 
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      jobinfo:[],
    }
  },
  mounted(){
    this.axios.get('/jobs').then(res=>{
      this.jobinfo=res.data.jobinfo
    })
  }
}
</script>




