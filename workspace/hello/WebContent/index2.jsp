<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<!-- ECharts单文件引入 -->
<script src="js/echarts.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script> 
</head>
<body onload="loadData()">
	<table>
		<tr>
			<td>
				<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
				<div id="main" style="width: 600px; height: 400px;"></div> <script
					type="text/javascript">
					// 基于准备好的dom，初始化echarts实例
					var myChart = echarts.init(document.getElementById('main'));
					  function loadData(option) {
						$.ajax({
							type : "post", //跳转方式为post
							async : false, //同步传输
							url : 'showEcharts2',
							data : {},
							dataType : 'json',
							success : function(result) {
								option.series[0].data = result;
								
							},
							error : function(errorMsg) {
								alert("数据加载失败");
							}

						});
					}  
					// 指定图表的配置项和数据
					option = {
    title : {
        text: 'iphone销量',
        subtext: '纯属虚构',
        x:'center'
    },
    tooltip : {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        x:'left',
        data:['iphone3','iphone4','iphone5']
    },
    dataRange: {
        min: 0,
        max: 2500,
        x: 'left',
        y: 'bottom',
        text:['高','低'],           // 文本，默认为数值文本
        calculable : true
    },
    toolbox: {
        show: true,
        orient : 'vertical',
        x: 'right',
        y: 'center',
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    roamController: {
        show: true,
        x: 'right',
        mapTypeControl: {
            'china': true
        }
    },
    series : [
        {
            name: 'iphone3',
            type: 'map',
            mapType: 'china',
            roam: false,
            itemStyle:{
                normal:{label:{show:true}},
                emphasis:{label:{show:true}}
            },
            data:[
                {name: '北京',value: Math.round(Math.random()*1000)},
                {name: '天津',value: Math.round(Math.random()*1000)},
                {name: '上海',value: Math.round(Math.random()*1000)},
                {name: '重庆',value: Math.round(Math.random()*1000)},
                {name: '河北',value: Math.round(Math.random()*1000)},
                {name: '河南',value: Math.round(Math.random()*1000)},
                {name: '云南',value: Math.round(Math.random()*1000)},
                {name: '辽宁',value: Math.round(Math.random()*1000)},
                {name: '黑龙江',value: Math.round(Math.random()*1000)},
                {name: '湖南',value: Math.round(Math.random()*1000)},
                {name: '安徽',value: Math.round(Math.random()*1000)},
                {name: '山东',value: Math.round(Math.random()*1000)},
                {name: '新疆',value: Math.round(Math.random()*1000)},
                {name: '江苏',value: Math.round(Math.random()*1000)},
                {name: '浙江',value: Math.round(Math.random()*1000)},
                {name: '江西',value: Math.round(Math.random()*1000)},
                {name: '湖北',value: Math.round(Math.random()*1000)},
                {name: '广西',value: Math.round(Math.random()*1000)},
                {name: '甘肃',value: Math.round(Math.random()*1000)},
                {name: '山西',value: Math.round(Math.random()*1000)},
                {name: '内蒙古',value: Math.round(Math.random()*1000)},
                {name: '陕西',value: Math.round(Math.random()*1000)},
                {name: '吉林',value: Math.round(Math.random()*1000)},
                {name: '福建',value: Math.round(Math.random()*1000)},
                {name: '贵州',value: Math.round(Math.random()*1000)},
                {name: '广东',value: Math.round(Math.random()*1000)},
                {name: '青海',value: Math.round(Math.random()*1000)},
                {name: '西藏',value: Math.round(Math.random()*1000)},
                {name: '四川',value: Math.round(Math.random()*1000)},
                {name: '宁夏',value: Math.round(Math.random()*1000)},
                {name: '海南',value: Math.round(Math.random()*1000)},
                {name: '台湾',value: Math.round(Math.random()*1000)},
                {name: '香港',value: Math.round(Math.random()*1000)},
                {name: '澳门',value: Math.round(Math.random()*1000)}
            ]
        },
        {
            name: 'iphone4',
            type: 'map',
            mapType: 'china',
            itemStyle:{
                normal:{label:{show:true}},
                emphasis:{label:{show:true}}
            },
            data:[
                {name: '北京',value: Math.round(Math.random()*1000)},
                {name: '天津',value: Math.round(Math.random()*1000)},
                {name: '上海',value: Math.round(Math.random()*1000)},
                {name: '重庆',value: Math.round(Math.random()*1000)},
                {name: '河北',value: Math.round(Math.random()*1000)},
                {name: '安徽',value: Math.round(Math.random()*1000)},
                {name: '新疆',value: Math.round(Math.random()*1000)},
                {name: '浙江',value: Math.round(Math.random()*1000)},
                {name: '江西',value: Math.round(Math.random()*1000)},
                {name: '山西',value: Math.round(Math.random()*1000)},
                {name: '内蒙古',value: Math.round(Math.random()*1000)},
                {name: '吉林',value: Math.round(Math.random()*1000)},
                {name: '福建',value: Math.round(Math.random()*1000)},
                {name: '广东',value: Math.round(Math.random()*1000)},
                {name: '西藏',value: Math.round(Math.random()*1000)},
                {name: '四川',value: Math.round(Math.random()*1000)},
                {name: '宁夏',value: Math.round(Math.random()*1000)},
                {name: '香港',value: Math.round(Math.random()*1000)},
                {name: '澳门',value: Math.round(Math.random()*1000)}
            ]
        },
        {
            name: 'iphone5',
            type: 'map',
            mapType: 'china',
            itemStyle:{
                normal:{label:{show:true}},
                emphasis:{label:{show:true}}
            },
            data:[
                {name: '北京',value: Math.round(Math.random()*1000)},
                {name: '天津',value: Math.round(Math.random()*1000)},
                {name: '上海',value: Math.round(Math.random()*1000)},
                {name: '广东',value: Math.round(Math.random()*1000)},
                {name: '台湾',value: Math.round(Math.random()*1000)},
                {name: '香港',value: Math.round(Math.random()*1000)},
                {name: '澳门',value: Math.round(Math.random()*1000)}
            ]
        }
    ]
};

					//loadData(option);
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				</script>
			</td>
		</tr>
	</table>
</body>
</html>
