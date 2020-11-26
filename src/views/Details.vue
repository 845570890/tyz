<template>
    <div class="container">
        <div v-if="show" class="title">
            <Title></Title>
           <a href="">
               <span class="day">11</span>
                <span class="date">
                    <span>2020</span>
                    <span>NOV</span>
                </span>
                <div>蜂首纪念</div>
            </a>
            <div class="i-link">
                <img src="../assets/images/articles/mm/CoUBGV5P1JaABIn8AAY2KrPB7QA16.jpeg" alt="">
                <div>
                    <router-link to="/login">
                        <div title="收藏" class="i-collect"></div>
                    </router-link>
                    <div title="分享" class="i-share"  @click="share"></div>
                </div>
            </div>
            <div class="note-wrapper">
                <div>你是风儿我是沙，一路向西到宁夏</div>
                <div>
                    <span>20-02-24</span>
                    <span>
                        浏览
                        <b>· 60</b>
                        回复
                    </span>
                </div>
                <div class="note-author">
                    <img src="../assets/images/articles/mm/wKgBEFqMYpiAVu52AABgBKcl2X828.jpeg" alt="">
                    <div>
                        <span>多多熊</span>
                        <span class="lv">Lv40</span>
                        <p>63篇游记，4053粉丝</p>
                    </div>
                    <span>宁夏</span>
                </div>
                <div class="note-news">
                    <span class="legend">我的出行信息</span>
                    <ul>
                        <li>
                            <span>出发时间</span>
                            <span>2020-10-12</span>
                        </li>
                        <li>
                            <span class="pp">人物</span>
                            <span>家庭出游</span>
                        </li>
                        <li>
                            <span class="price">人均费用</span>
                            <span>2000</span>
                        </li>
                        <li>
                            <span class="dd">出行天数</span>
                            <span>4</span>
                        </li>
                    </ul>
                </div>
                <div class="note-body">
                    <router-link to='/report'>
                        <img src="../assets/images/articles/mm/wKgE2l2MYYeAZOUJAAAB6zJmSHE170.png" alt="">
                        <span @click="report">举报</span>
                    </router-link>
                    <div note-body-title>写在前面的话</div>
                    <div class="noteArtiles">秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了秋天在广西，想着秋色最美的莫过于梯田了</div>
                    <div class="note_more" @click="moreArtiles">
                        <span>展开正文</span>
                        <img src="../assets/images/articles/mm/wKgBZ1o3WXOAZQ-vAAAHM2Kece0574.png" alt="">
                    </div>
                    <div class="note_app"  @click="moreArtiles">App内查看更多游记</div>
                </div>
            </div>
            <div class="note_recommend">
                <div>推荐游记</div> 
                <div v-for="n of 3" :key="n" class="recommends"  @click="moreArtiles">
                    <div class="recommend_first">
                        <div>
                            <p>柳州融水双龙沟</p>
                            <p>去玩的当天好热，车在车场晒到快溶了。好在餐厅美,去玩的当天好热，车在车场晒到快溶了。好在餐厅美..</p>
                            <div>App查看</div>
                        </div>
                        <div><img src="../assets/images/articles/mm/wKgBZ1mAjFWAAo_4AAJR_fxuIR435.jpeg" alt=""></div>
                    </div>
                    <div class="recommend_sec">
                        <img src="../assets/images/articles/mm/wKgIDlzrEOSAEI6pAA-wSYoMyTA94.jpeg" alt="">
                        <span>杨少艾</span>
                        <span>回复</span> 
                        <span class="recommend_count">3</span>
                        <span>浏览·</span>
                        <span class="recommend_count">1897</span>                 
                    </div>
                </div>
                <div  @click="moreArtiles">去马蜂窝查看更多相关游记 ></div>
            </div>
            <div class="travel_guide">
                <div>北京游玩指南</div>
                <!-- 选项卡 -->
                <mt-navbar v-model="selected">
                    <mt-tab-item id="1" class="guide_button">大家都在玩</mt-tab-item>
                    <mt-tab-item id="2" class="guide_button">美食控推荐</mt-tab-item>
                </mt-navbar>
                <!-- 面板 -->
                <div class="main">
                    <mt-tab-container v-model="selected">
                        <mt-tab-container-item id="1">
                            <mt-cell class="main_floor" v-for="n of 3" :key="n">
                                <div class="main_img"><img src="../assets/images/articles/mm/wKgEaVzfQyCAUESBAAKFSdh2sto16.jpeg" alt=""></div>
                                <div @click="moreArtiles">
                                    <p class="main_title">慕田峪长城</p>
                                    <div class="main_app">App查看</div>
                                    <div class="main_count"><span class="font_weight">1440</span>蜂评，<span class="font_weight">172</span>游记提及</div>
                                    <div class="main_rec"><span class="font_weight">推荐语：</span><span>中国乃至世界上保存最完整，规模最大的木质结构古建筑...</span></div>
                                </div> 
                            </mt-cell>
                            <!-- <div class="main_floor" v-for="n of 3" :key="n">
                                <div class="main_img"><img src="../assets/images/articles/mm/wKgEaVzfQyCAUESBAAKFSdh2sto16.jpeg" alt=""></div>
                                <div>
                                    <p class="main_title">慕田峪长城</p>
                                    <div class="main_app">App查看</div>
                                    <div class="main_count"><span class="font_weight">1440</span>蜂评，<span class="font_weight">172</span>游记提及</div>
                                    <div class="main_rec"><span class="font_weight">推荐语：</span><span>中国乃至世界上保存最完整，规模最大的木质结构古建筑...</span></div>
                                </div>  
                            </div>    -->
                            <div class="travel_all" @click="moreArtiles"><span>打开马蜂窝查景点，晒照刷爆朋友圈</span></div>
                        </mt-tab-container-item>
                        <mt-tab-container-item id="2">
                            <mt-cell class="main_floor" v-for="n of 3" :key="n">
                                <div class="main_img"><img src="../assets/images/articles/mm/wKgB3FITUp2AYKAgAAeGLiIaGIo97.jpeg" alt=""></div>
                                <div @click="moreArtiles">
                                    <p class="main_title">马子禄牛肉面</p>
                                    <div class="main_app">App查看</div>
                                    <div class="main_count"><span class="font_weight">1440</span>蜂评，<span class="font_weight">172</span>游记提及</div>
                                    <div class="main_rec"><span class="font_weight">推荐语：</span><span>中国乃至世界上保存最完整，规模最大的木质结构古建筑...</span></div>
                                </div> 
                            </mt-cell>
                            <!-- <div class="main_floor" v-for="n of 3" :key="n">
                                <div class="main_img"><img src="../assets/images/articles/mm/wKgB3FITUp2AYKAgAAeGLiIaGIo97.jpeg" alt=""></div>
                                <div>
                                    <p class="main_title">马子禄牛肉面</p>
                                    <div class="main_app">App查看</div>
                                    <div class="main_count"><span class="font_weight">1440</span>蜂评，<span class="font_weight">172</span>游记提及</div>
                                    <div class="main_rec"><span class="font_weight">推荐语：</span><span>中国乃至世界上保存最完整，规模最大的木质结构古建筑...</span></div>
                                </div>  
                            </div> -->
                            <div class="travel_all" @click="moreArtiles"><span>打开马蜂窝寻美食，小心流口水</span></div>
                        </mt-tab-container-item>
                    </mt-tab-container>  
                </div>
            </div>
            <div class="question">
                <div>北京精华问题</div>
                <div @click="moreArtiles">
                    <div class="question_title font_weight">北京著名景点都分布在哪里？求一张最全景点地图！</div>
                    <div><img src="../assets/images/articles/mm/wKgED1uqImOAAxCCAAAeJTVWYJU680.png" alt="">悄然随风</div>
                    <p>马蜂窝在北京目的地下的景点数据一共收录了1532个，推荐的行程也都是6天8天起步，你不多花点时间..</p>
                    <div class="question_app">App查看</div>
                </div>
                <div @click="moreArtiles"><span>北京</span><span class="font_weight">1112</span><span>回复</span><span class="font_weight question_browser">9495792</span><span>浏览</span></div>
                <div @click="moreArtiles">
                    <div><img src="../assets/images/articles/mm/wKgB3FICDbiAHrvrAADTooZi0Gw49.jpeg" alt="">arifeng</div>
                    <div class="question_title2 font_weight">想拿出一天时间去长城，该选慕田峪还是八达岭？</div>
                    <p>来北京最应该去哪座长城，毫无疑问，无论是从交通、人气、颜值，还是选择来看，我都会推荐八达岭O(∩..</p>
                    <div><span class="question_b">北京</span><span class="question_b">目的地推荐</span><span class="question_b">App查看</span><span class="font_weight question_browser2">3736935</span><span>浏览</span></div>
                </div>
            </div>
            <div class="play_r">
                <div class="play_route"><span>南京玩法路线</span><span>收藏完整路线</span></div>
            </div>
            <div class="play_swipe">
                <mt-swipe :auto="0">
                    <mt-swipe-item>
                        <div @click="moreArtiles">
                            <div><span class="play_title">春行江苏赏花4日游</span><span class="question_b">App查看</span ></div>
                            <div class="play_map"><img src="../assets/images/articles/mm/wKgEaVyYckGAAkg8AAEena69ljY513.png" alt=""></div>
                            <div class="play_count_p"><span class="play_count">33%</span ><span >初次访问南京的蜂蜂会选择这条路线</span></div>
                            <div class="play_routes">南京 → 扬州 → 兴化 → 无锡</div>
                        </div>    
                    </mt-swipe-item>
                    <mt-swipe-item>
                        <div @click="moreArtiles">
                            <div><span class="play_title">少数民族风情7日游</span><span class="question_b">App查看</span ></div>
                            <div class="play_map"><img src="../assets/images/articles/mm/wKgEaVyYckGAAkg8AAEena69ljY513.png" alt=""></div>
                            <div class="play_count_p"><span class="play_count">33%</span ><span >初次访问南京的蜂蜂会选择这条路线</span></div>
                            <div class="play_routes">南京 → 扬州 → 兴化 → 无锡</div>
                        </div> 
                    </mt-swipe-item>
                    <mt-swipe-item>
                        <div @click="moreArtiles">
                            <div><span class="play_title">桂林历史文化经典8日游</span><span class="question_b">App查看</span ></div>
                            <div class="play_map"><img src="../assets/images/articles/mm/wKgEaVyYckGAAkg8AAEena69ljY513.png" alt=""></div>
                            <div class="play_count_p"><span class="play_count">33%</span ><span >初次访问南京的蜂蜂会选择这条路线</span></div>
                            <div class="play_routes">南京 → 扬州 → 兴化 → 无锡</div>
                        </div> 
                    </mt-swipe-item>
                    <mt-swipe-item>
                        <div @click="moreArtiles">
                            <div><span class="play_title">山水休闲访古6日游</span><span class="question_b">App查看</span ></div>
                            <div class="play_map"><img src="../assets/images/articles/mm/wKgEaVyYckGAAkg8AAEena69ljY513.png" alt=""></div>
                            <div class="play_count_p"><span class="play_count">33%</span ><span >初次访问南京的蜂蜂会选择这条路线</span></div>
                            <div class="play_routes">南京 → 扬州 → 兴化 → 无锡</div>
                        </div> 
                    </mt-swipe-item>
                </mt-swipe>
                <!-- <mt-tab-container class="page-tabbar-tab-container" v-model="active1" swipeable>
                    <mt-tab-container-item id="tab-container1">
                        <mt-cell>
                            <div>
                                <div><span class="play_title">春行江苏赏花4日游</span><span class="question_b">App查看</span ></div>
                                <div class="play_map"><img src="../assets/images/articles/mm/wKgEaVyYckGAAkg8AAEena69ljY513.png" alt=""></div>
                                <div class="play_count_p"><span class="play_count">33%</span ><span >初次访问南京的蜂蜂会选择这条路线</span></div>
                                <div>南京 → 扬州 → 兴化 → 无锡</div>
                            </div>
                        </mt-cell>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="tab-container1">
                        <mt-cell >2</mt-cell>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="tab-container1">
                        <mt-cell >3</mt-cell>
                    </mt-tab-container-item>
                </mt-tab-container> -->
            </div>
        </div>
        <div class="share" v-else>
            <div>更多操作</div>
            <div>
                <router-link to="/" class="third">
                    <div class="share-weibo"></div>
                    <p>分享到微博</p>
                </router-link>
                <router-link to="/" class="third">
                    <div class="share-qq"></div>
                    <p>分享到QQ空间</p>
                </router-link>
                <router-link to="/" class="third">
                    <div class="share-author"></div>
                    <p>查看作者</p>
                </router-link>
                <router-link to="/" class="third others" >
                    <div class="share-others"></div>
                    <p>1000+篇相关游记</p>
                </router-link>    
            </div>
            <button @click="cancel">取消</button>
        </div>
    </div>
</template>
<style scoped>
    .guide_button{
        border: 1px solid #e8e8e8;
        border-radius: 5px;
        margin-right: 7.5px;
    }
    .mint-navbar{
        width: 200px !important;
    }
    .mint-navbar .mint-tab-item:last-child{
        border-right: 1px solid #e8e8e8;
    }
    .mint-navbar .mint-tab-item{
        padding: 12px 0;
    }
    .mint-navbar .mint-tab-item.is-selected {
        background: #ffe663 ;
        border-color: #ffe663 ;
        color:#474747 ;
        font-weight: bold ;
        margin-bottom: 0;
    }
    
</style>
<style>
    .mint-tab-item-label{
        font-size: 14px !important;
    } 
    .play_swipe .mint-swipe-indicators .is-active{
        background: #fc9c28;
        opacity: 1;
    }  
</style>

<script>
import Title from '../components/Title.vue'
export default {
    components:{Title},
    data(){
        return{
            show:true,
            selected:'1',
            active1:'tab-container1'
        }   
    },
    methods:{
        share(){
            this.show=false
        },
        cancel(){
            this.show=true
        },
        moreArtiles(){
            this.$router.push('/login')
        },
        report(){
            // 获取举报按钮的内容
            let loginReport=document.querySelectorAll('.mint-msgbox-btns>.mint-msgbox-confirm ')
            console.log(loginReport)
            let strReport=loginReport.innerHTML("去登陆")
            MessageBox.alert('', {
                message: '需要登录才能举报',
                title: '提示',
                alertButtonText: '去登陆'
            }).then(action => {
                if (action == 'confirm') {
                    console.log('去登陆');
                }
            });
            
            // this.$messagebox({title:"提示",message:"需要登录才能举报",strReport})
        }
    }
}
</script>



