<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>

    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        .main{
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .quarter-div{
            width: 50%;
            height: 50%;
            float: left;
        }
        .blue{
            background-color: #ffffff;
        }
        .green{
            background-color: #ffffff;
        }
        .orange{
            background-color: #ffffff;
        }
        .yellow{
            background-color: #ffffff;
        }
    </style>

</head>
<body>

<div class="main">
    <%--查询每个医生的总预约人数--%>
    <div class="quarter-div blue" id="main1"></div>
    <%--查看科室就诊总人数--%>
    <div class="quarter-div green" id="main2"></div>
<%--空闲病床和占用病床占比--%>
    <div class="quarter-div orange" id="main3"></div>
    <div class="quarter-div yellow"></div>
</div>
<script type="text/javascript">
    <%--查询每个医生的总预约人数--%>
    var myChart1 = echarts.init(document.getElementById('main1'));
    <%--查看科室就诊总人数--%>
    var myChart = echarts.init(document.getElementById('main2'));
    <%--空闲病床和占用病床占比--%>
    var myChart2 = echarts.init(document.getElementById('main3'));
    // 显示标题，图例和空的坐标轴
    myChart1.setOption({
        title : {
            text : '医生就诊总人数',

        },
        tooltip : {},
        legend : {
            data : [ '人数' ]
        },
        xAxis : {
            data : []
        },
        yAxis : {
            name:"人数",
            type: 'value',
            axisLabel: {
                show: true,
                textStyle: {
                    fontSize: '12'
                }
            },
            minInterval: 1
        },
        series : [ {
            name : '人数',
            type : 'bar',
            data : []
        } ]
    });
    myChart.setOption({
        title : {
            text : '科室就诊总人数',
        },
        tooltip : {},
        legend : {
            data : [ '人数' ]
        },
        xAxis : {
            data : []
        },
        yAxis : {
            name:"人数",
            type: 'value',
            axisLabel: {
                show: true,
                textStyle: {
                    fontSize: '12'
                }
            },
            minInterval: 1
        },
        series : [{
            name : '人数',
            type : 'bar',
            data : []
        }]
    });
    myChart2.setOption({
        title: {
            text: '病床利用占比',
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            orient: 'vertical',

            data: []
        },
        series: [
            {
                type: 'pie',
                radius: '55%',
                center: ['50%', '60%'],
                data: [],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    });

    // 接收医生的姓名
    var a = [];
    // 接收就诊人数总数
    var b = [];
    // 接收科室
    var names1 = [];
    // 接收科室就诊的总人数
    var nums1 = [];
    $.ajax({
        type : "post",
        async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "../aa/bb", //请求发送到TestServlet处
        data : {},
        dataType : "json", //返回数据形式为json
        success : function(result0) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result0) {

                for (var i = 0; i < result0.length; i++) {
                    a.push(result0[i].doctor_name); //挨个取出类别并填入类别数组
                }
                for (var i = 0; i < result0.length; i++) {
                    b.push(result0[i].count); //挨个取出销量并填入销量数组
                }
                myChart1.hideLoading(); //隐藏加载动画
                myChart1.setOption({ //加载数据图表
                    xAxis : {
                        data : a
                    },
                    series : [ {
                        // 根据名字对应到相应的系列
                        name : '人数',
                        data : b
                    } ]
                });

            }

        },

        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart1.hideLoading();
        }
    })

    $.ajax({
        type : "post",
        async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "../aa/cc", //请求发送到TestServlet处
        data : {},
        dataType : "json", //返回数据形式为json
        success : function(result) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result) {
                for (var i = 0; i < result.length; i++) {
                    names1.push(result[i].department_name); //挨个取出类别并填入类别数组
                }
                for (var i = 0; i < result.length; i++) {
                    nums1.push(result[i].count); //挨个取出销量并填入销量数组
                }
                myChart.hideLoading(); //隐藏加载动画
                myChart.setOption({ //加载数据图表
                    xAxis : {
                        data : names1
                    },
                    series : [ {
                        // 根据名字对应到相应的系列
                        name : '人数',
                        data : nums1
                    } ]
                });

            }

        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })
    // 接收数病床的值
    var names11 = ["空闲","不空闲"];
    var mydata = [];
    $.ajax({
        type: 'post',
        url: '/aa/dd',
        dataType: 'json',
        success: function (datas) {
            for (var i = 0; i < datas.length; i++) {
                mydata[i] = {value: datas[i].free, name:"空闲"};
            }

            for (var i = 0; i < datas.length; i++) {
                mydata[i+1] = {value: datas[i].live, name:"不空闲"};
            }
            // alert(JSON.stringify(names11));
            // alert(JSON.stringify(mydata));

            myChart2.setOption({ //加载数据图表
                legend : {
                    data : names11
                },
                series : [ {
                    // 根据名字对应到相应的系列
                    name : '人数',
                    data : mydata
                } ]
            });
        }
    })






</script>


</body>
</html>
