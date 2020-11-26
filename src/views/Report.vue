<template>
    <div class="my_report">
        <p>这条内容存在什么问题</p>
        <p>为帮助审核人员，更加快速处理，请补充违规内容出现位置等详细信息。</p>
        <mt-field type="textarea" class="report_area" rows="5" v-model="report"></mt-field>
    </div>
</template>
<style scoped>
    .my_report{
        padding: 1rem 1rem;
    }
    p{
        margin: 20px 0;
    }
    .report_area{
        border: 1px solid #bdbfc2;
    }
</style>
<script>
export default {
    data(){
        return{
            report:'1'
        }
    },
    
}
</script>

