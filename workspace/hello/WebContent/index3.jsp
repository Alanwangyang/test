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
							text : '销售情况',
							subtext : '纯属虚构',
							x : 'center'
						},
						tooltip : {
							trigger : 'item',
							formatter : "{a} <br/>{b} : {c} ({d}%)"
						},
						legend : {
							orient : 'vertical',
							x : 'left',
						},
						toolbox : {
							show : true,
							feature : {
								mark : {
									show : true
								},
								dataView : {
									show : true,
									readOnly : false
								},
								magicType : {
									show : true,
									type : [ 'pie', 'funnel' ],
									option : {
										funnel : {
											x : '25%',
											width : '50%',
											funnelAlign : 'left',
											max : 1548
										}
									}
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
						series : [ {
							name : '销售量',
							type : 'pie',
							radius : '55%',
							center : [ '50%', '60%' ],
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
