<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="./include/header.jsp" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <style>
    html,
    body {
      /* background-image: url(); */
      /* background: url(MyProject\src\main\webapp\resources\static\img\mountain.jpg);
      background-size: cover; */
      height: 900px;
      width: 100%;
      margin: 0;
      overflow: hidden;
      -ms-overflow-style: none;
    }

    ::-webkit-scrollbar {
      display: none;
    }

    body > #wrap {
      display: flex;
      flex-direction: column;
      justify-content: center;
      width: 100%;
      height: 100%;
      text-align: center;

      /* justify-content: space-around;*/
      margin-top: 5px;
      margin-bottom: 5px;
      /* vertical-align: middle; */
      /* align-content: space-around; */
    }

    body > #wrap > #wrap2 {
      display: flex;
      flex-direction: row;
      /* width: max-content;
      height: max-content; */
      margin-top: 2px;
      margin-bottom: 3px;
      z-index: 10;
    }

    /* 지도 영역 */
    body > #wrap > .map-area {
      flex-direction: row;
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
    }

    body > #wrap #map {
      /* display: inline-block; */
      width: 100%;
      height: 100%;

      z-index: 1;
    }

    /* 버튼 정렬 */
    .btn-area {
      text-align: center;
      justify-content: center;
      /* align-content: space-around; */
      /* z-index: 10; */
    }

    /* 버튼 스타일 */
    .custom-btn {
      display: inline-block;
      width: 100px;
      border: none;
      height: 40px;
      color: #fff;
      border-radius: 10px;
      padding: 10px 25px;
      font-family: 'Lato', sans-serif;
      font-weight: 500;
      cursor: pointer;
      transition: all 0.3s ease;
      position: relative;
      display: inline-block;
      box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, 0.5),
        7px 7px 20px 0px rgba(0, 0, 0, 0.1), 4px 4px 5px 0px rgba(0, 0, 0, 0.1);
      outline: none;
      transition: 0.5s;
      background-size: 200% auto;
      color: white;
      box-shadow: 10 0 20px #f0ecec;
      background-image: linear-gradient(to right, #457acf 0%, #83bad1 51%, #a1c4fd 100%);
    }

    .custom-btn:hover {
      background-position: right center; 
    }

    /* 검색창 스타일 */
    .search {
      position: relative;
      width: 300px;
      justify-content: center;
      /* align-content: space-around; */
    }

    input {
      width: 100%;
      border: 1px solid #bbb;
      border-radius: 8px;
      padding: 10px 12px;
      font-size: 14px;
    }

    img {
      position: absolute;
      width: 17px;
      top: 10px;
      right: 12px;
      margin: 0;
    }

    /* 마우스 오버레이 박스 */
    .area {
      position: relative;
      width: 30px;
      height: 20px;
      padding: 15px 10px;
      font-size: 16px;
      font-family: monospace;
      font-weight: bold;
      text-align: center;
      border-radius: 10px;
      margin-bottom: 15px;
    }

    /* 마커 누르면 뜨는 창 */
    .wrap {
      position: absolute;
      left: 0;
      bottom: 40px;
      width: 350px;
      height: 400px;
      margin-left: -144px;
      text-align: left;
      overflow: hidden;
      font-size: 12px;
      font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
      line-height: 1.5;
    }
    .wrap * {
      padding: 0;
      margin: 0;
    }
    .wrap .info {
      width: 350px; /*286 */
      height: 420px;
      border-radius: 5px;
      border-bottom: 2px solid #ccc;
      border-right: 1px solid #ccc;
      overflow: hidden;
      background: #fff;
    }
    .wrap .info:nth-child(1) {
      border: 0;
      box-shadow: 0px 1px 2px #888;
    }
    .info .title {
      padding: 5px 0 0 10px;
      height: 30px;
      background: #eee;
      border-bottom: 1px solid #ddd;
      font-size: 18px;
      font-weight: bold;
    }
    .info .close {
      position: absolute;
      top: 10px;
      right: 10px;
      color: #888;
      width: 17px;
      height: 17px;
      background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
    }
    .info .close:hover {
      cursor: pointer;
    }
    .info .body {
      position: relative;
      overflow: hidden;
    }
    .info .desc {
      position: relative;
      margin: 13px 0 0 90px;
      height: 75px;
    }
    .desc .ellipsis {
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }
    .desc .jibun {
      font-size: 11px;
      color: #888;
      margin-top: -2px;
    }
    .info .img {
      position: absolute;
      top: 6px;
      left: 5px;
      width: 73px;
      height: 71px;
      border: 1px solid #ddd;
      color: #888;
      overflow: hidden;
    }
    .info:after {
      content: '';
      position: absolute;
      margin-left: -12px;
      left: 50%;
      bottom: 0;
      width: 22px;
      height: 12px;
      background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png');
    }
    .info .link {
      color: #5085bb;
    }
  </style>

  <body>
    <div id="wrap">
      <div id="wrap2">
        <!-- 계절선택버튼 -->
        <div class="btn-area">
          <button class="custom-btn find-btn1">봄</button>
          <button class="custom-btn find-btn2">여름</button>
          <button class="custom-btn find-btn3">가을</button>
          <button class="custom-btn find-btn4">겨울</button>
        </div>
        <!-- 검색창 -->
        <div class="search">
          <input
            type="text"
            placeholder="축제명 입력"
          />
          <img
            src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"
          />
        </div>
      </div>
      <!-- 지도영역 -->
      <div class="map-area">
        <div id="map"></div>
      </div>
    </div>

    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a5c28d99bb31ae88bf5a825a4fd77ac6&libraries=services,clusterer,drawing"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.7.0.min.js"
      integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
      crossorigin="anonymous"
    ></script>

    <script>
      let address = document.getElementById('inpt_search');

      var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
          level: 13, // 지도의 확대 레벨
        };

      // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
      // var map = new kakao.maps.Map(mapContainer, mapOption);

      let map = new kakao.maps.Map(mapContainer, mapOption),
        customOverlay = new kakao.maps.CustomOverlay({});

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
      var zoomControl = new kakao.maps.ZoomControl();
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

      //1. 시도 json 읽어오기
      var jsonLocation = '/resources/external_json/sido.json';

      let detailMode = false; // level에 따라 다른 json 파일 사용
      let level = '';
      let polygons = [];
      // var polygonPath = [];
      var points = [];
      //2. 축제장소 읽어오기

      // init('json/sido.json');
      $.getJSON(jsonLocation, function (data) {
        var data = data.features;
        var coordinates = [];
        var name = '';
        $.each(data, function (i, val) {
          if (val.geometry.type == 'Polygon') {
            coordinates = val.geometry.coordinates;
            name = val.properties.SIG_KOR_NM;

            displayArea(coordinates, name); // 호출!!
          }
        });
      });

      // 지도에 마커를 표시합니다
      var marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(33.450701, 126.570667),
      });

      var content =
        '<div class="wrap">' +
        '    <div class="info">' +
        '        <div class="title">' +
        '            강릉커피축제' +
        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' +
        '        </div>' +
        '        <div class="body">' +
        '            <div class="img">' +
        '                <img src="/resources/static/img/강릉 커피.png" width="73" height="70">' +
        '           </div>' +
        '            <div class="desc">' +
        '                <div class="ellipsis">강원도 강릉시 임영로131번길 6 (용강동)</div>' +
        '                <div class="jibun ellipsis">강원도 강릉시</div>' +
        '                <div><a href="https://www.coffeefestival.net" target="_blank" class="link">홈페이지</a></div>' +
        '            </div>' +
        '<div class="reply">' +
        '<div class="form-group">' +
        '<form method="post" encType = "multipart/form-data" action="#">' +
          '<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">' +
            '<tr>' +
              '<td style="border-bottom:none;" valign="middle"><br><br></td>' +
              '<td><input type="text" style="height:100px;" class="form-control" placeholder="댓글 입력창." name = "commentText"></td>' +
              '<td><br><br><input type="submit" class="btn-primary pull" value="댓글 작성"></td>' +
            '</tr>' +
          '</table>' +
        '</form>' +
      '</div>' +
    '</div>' +
    '<div class="container">' +
	'<div class="row">' +
		'<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd; width:50px height:50px">' +
			'<tbody>' +
				'<tr>' +
					'<td align="left" bgcolor="beige">댓글</td>' +
				'</tr>' +
				'<tr>' +
						'<div class="container">' +		//댓글하나당 container만들어서 보여줌
							'<div class="row">' +
								'<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">' +
									'<tbody>' +
										'<tr>' +							
											'<td colspan="2"></td>' +
											'<td align="right">' +
											'</td>' +
										'</tr>' +
									'</tbody>' +
								'</table>' +			
							'</div>' +
						'</div>' +
				'</tr>' +
		'</table>' +
	'</div>' +
'</div>' +
        '</div>' +
        '    </div>' +
        '</div>';

      // 마커 위에 커스텀오버레이를 표시합니다
      // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
      var overlay = new kakao.maps.CustomOverlay({
        content: content,
        map: map,
        position: marker.getPosition(),
      });

      // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
      kakao.maps.event.addListener(marker, 'click', function () {
        overlay.setMap(map);
      });

      // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
      function closeOverlay() {
        overlay.setMap(null);
      }

      //줌 전역으로?
      //폴리곤 표시
      function displayArea(coordinates, name) {
        var polygonPath = [];
        $.each(coordinates[0], function (i, coordinate) {
          var point = new Object();
          point.x = coordinate[1];
          point.y = coordinate[0];
          points.push(point);
          polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
        });

        var polygon = new kakao.maps.Polygon({
          path: polygonPath, // 그려질 다각형의 좌표 배열입니다
          strokeWeight: 3, // 선의 두께입니다
          strokeColor: '#39DE2A', // 선의 색깔입니다 초록
          //strokeColor: '#0356a9', // 선의 색깔입니다 파랑
          strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
          strokeStyle: 'longdash', // 선의 스타일입니다
          // fillColor: '#A2FF99', // 채우기 색깔입니다
          fillColor: '#EFFFED', // 채우기 색깔입니다
          fillOpacity: 0.7, // 채우기 불투명도 입니다
        });

        polygon.setMap(map); // 지도에 다각형 표시

        // 수정
        kakao.maps.event.addListener(map, 'zoom_changed', function () {
          level = map.getLevel();

          //console.log('현재 지도 레벨은 ' + level + ' 입니다');

          if (!detailMode && level <= 10) {
            // level 에 따라 다른 json 파일을 사용한다.
            detailMode = true;
            removePolygon();
            init('json/sig.json');

            //여기서 계절 버튼 누르면 요청.
          } else if (detailMode && level > 10) {
            // level 에 따라 다른 json 파일을 사용한다.
            console.log('디테일모드 아니다!');

            detailMode = false;
            removePolygon();
            init('json/sido.json');
          }
        });

        kakao.maps.event.addListener(
          polygon,
          'mouseover',
          function (mouseEvent) {
            // console.log('마우스 오버!');

            polygon.setOptions({
              fillColor: '#09f',
            });
            // setTimeout(
            //   100

            // );
            customOverlay.setPosition(mouseEvent.latLng);
            // customOverlay.setContent('<div class="area">' + name + '</div>');
            customOverlay.setMap(map);
          }
        );

        kakao.maps.event.addListener(
          polygon,
          'mousemove',
          function (mouseEvent) {
            customOverlay.setPosition(mouseEvent.latLng);
          }
        );

        // focus??
        kakao.maps.event.addListener(
          polygon,
          'mouseout',
          function (mouseEvent) {
            // console.log('마우스아웃!');

            //customOverlay.setPosition(mouseEvent.latLng); // 추가
            polygon.setOptions({ fillColor: '#EFFFED' });
            // setTimeout(customOverlay.setMap(null), 10);
            customOverlay.setMap(null);
          }
        );

        kakao.maps.event.addListener(polygon, 'click', function (mouseEvent) {
          if (!detailMode) {
            map.setLevel(10); // level에 따라 이벤트 변경
            var latlng = mouseEvent.latLng;

            // 지도의 중심을 부드럽게 클릭한 위치로 이동시킵니다.
            map.panTo(latlng);
          } else {
            polygon.setOptions({ fillOpacity: 2 });
            // 클릭 이벤트 함수
            callFunctionWithRegionCode(area.location);
          }
        });
      } // displayArea() end

      // 폴리곤 생성!!!!!!!!!
      function init(path) {
        //path 경로의 json 파일 파싱
        $.getJSON(path, function (geojson) {
          var units = geojson.features; // json key값이 "features"인 것의 value를 통으로 가져온다.

          $.each(units, function (index, unit) {
            // 1개 지역씩 꺼내서 사용. val은 그 1개 지역에 대한 정보를 담는다
            var coordinates = []; //좌표 저장할 배열
            var name = ''; // 지역 이름
            var cd_location = '';
            coordinates = unit.geometry.coordinates; // 1개 지역의 영역을 구성하는 다각형의 모든 좌표 배열
            name = unit.properties.SIG_KOR_NM; // 1개 지역의 이름
            cd_location = unit.properties.SIG_CD;

            var ob = new Object();
            ob.name = name;
            ob.path = [];
            ob.location = cd_location;
            $.each(coordinates[0], function (index, coordinate) {
              ob.path.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
            });

            areas[index] = ob;
          }); //each
        }); //getJSON

        // 지도에 영역데이터를 폴리곤으로 표시
        for (var i = 0, len = areas.length; i < len; i++) {
          displayArea(areas[i]);
        }
        /////init 안
      } // init() end

      // kakao.maps.event.addListener(map, 'zoom_changed', function () {
      //   level = map.getLevel();
      //   if (!detailMode && level <= 10) {
      //     // level 에 따라 다른 json 파일을 사용한다.
      //     detailMode = true;
      //     removePolygon();
      //     init('json/sig.json');
      //   } else if (detailMode && level > 10) {
      //     // level 에 따라 다른 json 파일을 사용한다.
      //     detailMode = false;
      //     removePolygon();
      //     init('json/sido.json');
      //   }
      // });

      // 모든 폴리곤을 지우는 함수
      function removePolygon() {
        for (let i = 0; i < polygons.length; i++) {
          polygons[i].setMap(null);
        }
        areas = [];
        polygons = [];
      }

      ///////////////////////////////////////////////////
      // 다각형에 마우스오버 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoverOption = {
        fillColor: '#A2FF99', // 채우기 색깔입니다
        fillOpacity: 0.7, // 채우기 불투명도 입니다
      };

      // 다각형에 마우스아웃 이벤트가 발생했을 때 변경할 채우기 옵션입니다
      var mouseoutOption = {
        fillColor: '#EFFFED', // 채우기 색깔입니다
        fillOpacity: 0.8, // 채우기 불투명도 입니다
      };

      //계절버튼 클릭 이벤트
      // 마커를 담을 배열 선언
      var markers = [];

      document.querySelector('.custom-btn').addEventListener('click', (e) => {
        if (e.target.matches('.find-btn1')) {
          //봄 눌렀을 때
          fetch(
            '${pageContext.request.contextPath}/festival/ftvList/' + 'spring'
          )
            .then((res) => res.json())
            .then((data) => {
              // console.log('통신 성공!: ', data); // dto리스트 가져옴
              for (let i = 0; i < data.length; i++) {
                // console.log(data[i].roadAddr);

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(
                  data[i].roadAddr,
                  function (result, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );

                      // 결과값으로 받은 위치를 마커로 표시합니다
                      marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      markers.push(marker); // 배열에 마커 넣기

                      // 인포윈도우로 장소에 대한 설명을 표시합니다
                      // var infowindow = new kakao.maps.InfoWindow({
                      //   content:
                      //     '<div style="width:150px;text-align:center;padding:6px 0;">' +
                      //     data[i].ftvName +
                      //     '</div>',
                      // });
                      //infowindow.open(map, marker);

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      map.setCenter(coords);
                    }
                  }
                ); // End of addressSearch
              } // End of For문
            });
        } else if (e.target.matches('.find-btn2')) {
          //여름 눌렀을 때
          fetch(
            '${pageContext.request.contextPath}/festival/ftvList/' + 'summer'
          )
            .then((res) => res.json())
            .then((data) => {
              // console.log('통신 성공!: ', data); // dto리스트 가져옴
              for (let i = 0; i < data.length; i++) {
                // console.log(data[i].roadAddr);

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(
                  data[i].roadAddr,
                  function (result, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );

                      // 결과값으로 받은 위치를 마커로 표시합니다
                      var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      markers.push(marker); // 배열에 마커 넣기

                      // 인포윈도우로 장소에 대한 설명을 표시합니다
                      // var infowindow = new kakao.maps.InfoWindow({
                      //   content:
                      //     '<div style="width:150px;text-align:center;padding:6px 0;">' +
                      //     data[i].ftvName +
                      //     '</div>',
                      // });
                      //infowindow.open(map, marker);

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      map.setCenter(coords);
                    }
                  }
                ); // End of addressSearch
              } // End of For문
            });
        } else if (e.target.matches('.find-btn3')) {
          //가을 눌렀을 때
          fetch('${pageContext.request.contextPath}/festival/ftvList/' + 'fall')
            .then((res) => res.json())
            .then((data) => {
              // console.log('통신 성공!: ', data); // dto리스트 가져옴
              for (let i = 0; i < data.length; i++) {
                // console.log(data[i].roadAddr);

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(
                  data[i].roadAddr,
                  function (result, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );

                      // 결과값으로 받은 위치를 마커로 표시합니다
                      var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      markers.push(marker); // 배열에 마커 넣기

                      // 인포윈도우로 장소에 대한 설명을 표시합니다
                      // var infowindow = new kakao.maps.InfoWindow({
                      //   content:
                      //     '<div style="width:150px;text-align:center;padding:6px 0;">' +
                      //     data[i].ftvName +
                      //     '</div>',
                      // });
                      //infowindow.open(map, marker);

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      map.setCenter(coords);
                    }
                  }
                ); // End of addressSearch
              } // End of For문
            });
        } else if (e.target.matches('.find-btn4')) {
          //겨울 눌렀을 때
          fetch(
            '${pageContext.request.contextPath}/festival/ftvList/' + 'winter'
          )
            .then((res) => res.json())
            .then((data) => {
              // console.log('통신 성공!: ', data); // dto리스트 가져옴
              for (let i = 0; i < data.length; i++) {
                // console.log(data[i].roadAddr);

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch(
                  data[i].roadAddr,
                  function (result, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {
                      var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                      );

                      // 결과값으로 받은 위치를 마커로 표시합니다
                      var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                      });

                      markers.push(marker); // 배열에 마커 넣기

                      // 인포윈도우로 장소에 대한 설명을 표시합니다
                      // var infowindow = new kakao.maps.InfoWindow({
                      //   content:
                      //     '<div style="width:150px;text-align:center;padding:6px 0;">' +
                      //     data[i].ftvName +
                      //     '</div>',
                      // });
                      //infowindow.open(map, marker);

                      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                      map.setCenter(coords);
                    }
                  }
                ); // End of addressSearch
              } // End of For문
            });
        }

        //
      }); // End of event
    </script>
  </body>
</html>

<%@ include file="./include/footer.jsp" %>
