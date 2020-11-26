<template>
  <div>
    <Head></Head>
    <div>
      <mt-field 
        type="textarea" rows="5" 
        class="focus"
        :class="focus_in" 
        :placeholder="holder"  
        v-model="suggestion" 
        @focus.native.capture="question" 
        @blur.native.capture="blur"></mt-field>
      <input  type="tel" 
        class="focus focus2"
        :placeholder="telphone" 
        :class="focus_in2" 
        v-model="phone" 
        @focus="telfoc" 
        @blur="telblur">
    </div>
    <div id="sg_button">
      <a href="javascript:;"><mt-button type="primary" class="btn-sg" @click="sendsg">发送</mt-button></a>
      <router-link to="/"><mt-button type="primary" class="btn-sg">返回</mt-button></router-link>
    </div>
  </div>
</template>
<script>
import Head from '../components/Head.vue'
export default {
  components:{Head},
  data(){
    return{
      holder:'写下你的问题和建议吧...',
      telphone:"联系方式",
      focus_in:{focus_on:false},
      focus_in2:{focus_on:false},
      suggestion:'',
      phone:''
    }
  },
  methods:{
    //获取焦点时，去除placeholder的值，并文本框加粗
    question(){
      if(this.holder=='写下你的问题和建议吧...'){
        this.holder=''
      }
      this.focus_in={focus_on:true}
    },
    //失去焦点，如果文本框为空，则恢复默认样式
    blur(){
      if(this.holder==''){
        this.holder='写下你的问题和建议吧...'
      }
      this.focus_in={focus_on:false}
    },
    //获取焦点时，去除placeholder的值，并文本框加粗
    telfoc(){
      if(this.telphone=="联系方式"){
        this.telphone=''
      }
      this.focus_in2={focus_on:true}
    },
    //失去焦点，如果文本框为空，则恢复默认样式
    telblur(){
      if(this.telphone==''){
        this.telphone="联系方式"
      }
      this.focus_in2={focus_on:false}
    },
    sendsg(){
      //建议文本框不为空，则可发送请求并弹出提示
      if(this.suggestion!=""){ 
        this.axios.post('/suggestion','suggestion='+this.suggestion+'&phone='+this.phone).then(result=>{
          alert(result.data.message)
        }) 
      }
    }
  }
}
</script>
