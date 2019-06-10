<%@ page language="java" pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<!-- ECharts单文件引入 -->
<script src="js/echarts.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
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
							url : 'showEcharts', 
							data : {},
							dataType : 'json',
							success : function(result) {
								option.xAxis[0].data=result.month;
								option.series[0].data=result.data1;
								option.series[1].data=result.data2;
							},
							error : function(errorMsg) {
								alert("数据加载失败");
							}
						});
					}
					// 指定图表的配置项和数据
					option = {
						title : {
							text : '进货与销售量',
							subtext : '纯属虚构'
						},
						tooltip : {
							trigger : 'axis'
						},
						legend : {
						},
						toolbox : {
							show : true,
							feature : {
								dataView : {
									show : true,
									readOnly : false
								},
								magicType : {
									show : true,
									type : [ 'line', 'bar' ]
								},
								restore : {
									show : true
								},
								saveAsImage : {
									show : true
								}
							}
						},
						calculable : true,
						xAxis : [ {
							type : 'category',
						} ],
						yAxis : [ {
							type : 'value'
						} ],
						series : [
								{
									name : '进货量',
									type : 'bar',
									markPoint : {
										data : [ {
											type : 'max',
											name : '最大值'
										}, {
											type : 'min',
											name : '最小值'
										} ]
									},
									markLine : {
										data : [ {
											type : 'average',
											name : '平均值'
										} ]
									}
								},
								{
									name : '销售量',
									type : 'bar',
									markPoint : {
										data : [ {
											type : 'max',
											name : '最大值'
										}, {
											type : 'min',
											name : '最小值'
										} ]
									},
									markLine : {
										data : [ {
											type : 'average', 
										} ]
									}
								} ]
					};
					loadData(option);
					// 使用刚指定的配置项和数据显示图表。
					myChart.setOption(option);
				</script>
			</td>
		</tr>
	</table>
</body>
</html>
