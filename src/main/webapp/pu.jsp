<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.min.js"></script>
</head>
<body>

    <%--网站页面访问量（pv）--%>
    <div id="main1" style="width:1400px;height:390px;"></div>
<%--网站独立访客访问数（uv）--%>
    <div id="main2" style="width: 600px;height:390px;"></div>
<script type="text/javascript">
    <%--网站页面访问量（pv）--%>
    var myChart1 = echarts.init(document.getElementById('main1'));
    <%--网站独立访客访问数（uv）--%>
    // var myChart2 = echarts.init(document.getElementById('main2'));
    // 显示标题，图例和空的坐标轴
    myChart1.setOption({
        dataZoom: [
            {
                show: true,
                realtime: true,
                start: 0,
                end: 50
            },
            {
                type: 'inside',
                realtime: true,
                start: 0,
                end: 50
            }
        ],
        title : {
            text : '网站页面访问量趋势（pv）',

        },
        tooltip : {},
        legend : {
            data : ['人数']
        },
        xAxis: {
            type: 'category',
            boundaryGap: false,
            data: []
        },
        yAxis: {
            name:"人数",
            type: 'value',
                axisLabel: {
                    show: true,
                        textStyle: {
                        fontSize: '12'
                    }
                }
        },
        series: [{
            name : '人数',
            data: [],
            type: 'line',
            areaStyle: {}
        }]
    });
    // myChart2.setOption({
    //     title : {
    //         text : '网站独立访客访问数趋势（uv）',
    //
    //     },
    //     tooltip : {},
    //     legend : {
    //         data : ['人数']
    //     },
    //     xAxis: {
    //         type: 'category',
    //         boundaryGap: false,
    //         data: []
    //     },
    //     yAxis: {
    //         name:"人数",
    //         type: 'value',
    //         axisLabel: {
    //             show: true,
    //             textStyle: {
    //                 fontSize: '12'
    //             }
    //         }
    //     },
    //     series: [{
    //         name : '人数',
    //         data: [],
    //         type: 'line',
    //         areaStyle: {}
    //     }]
    // });

    var a = [];

    var b = [];

    $.ajax({
        type : "post",
        async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
        url : "../aa/pp", //请求发送到TestServlet处
        data : {},
        dataType : "json", //返回数据形式为json
        success : function(result0) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            if (result0) {

                for (var i = 0; i < result0.length; i++) {
                    a.push(result0[i].time); //挨个取出类别并填入类别数组
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

    var a1 = [];

    var b1 = [];

    // $.ajax({
    //     type : "post",
    //     async : true, //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
    //     url : "../aa/uu", //请求发送到TestServlet处
    //     data : {},
    //     dataType : "json", //返回数据形式为json
    //     success : function(result) {
    //         //请求成功时执行该函数内容，result即为服务器返回的json对象
    //         if (result) {
    //
    //             for (var i = 0; i < result.length; i++) {
    //                 a1.push(result[i].time); //挨个取出类别并填入类别数组
    //             }
    //             for (var i = 0; i < result.length; i++) {
    //                 b1.push(result[i].count); //挨个取出销量并填入销量数组
    //             }
    //             myChart2.hideLoading(); //隐藏加载动画
    //             myChart2.setOption({ //加载数据图表
    //                 xAxis : {
    //                     data : a1
    //                 },
    //                 series : [{
    //                     // 根据名字对应到相应的系列
    //                     name : '人数',
    //                     data : b1
    //                 } ]
    //             });
    //
    //         }
    //
    //     },
    //
    //     error : function(errorMsg) {
    //         //请求失败时执行该函数
    //         alert("图表请求数据失败!");
    //         myChart2.hideLoading();
    //     }
    // })

</script>


</body>
</html>
