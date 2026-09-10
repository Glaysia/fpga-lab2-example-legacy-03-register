# 레지스터: 데이터 저장과 이동 · 레거시 자료와 비교

이 프로젝트는 원본 교안의 화면과 설계 의도를 읽고, 단일 클록으로 정리한 회로를 직접 작성·실행하는 실습이다. `original/`은 원본 파일을 바이트 그대로 보존한다. `src/`, `sim/`, `constraints/`가 실제 수업에서 실행할 파일이다.

원본은 저장과 전달 버튼 각각을 클록으로 사용한다. 현재 회로는 단일 clk에서 load와 transfer를 사용하며, 둘이 동시에 1일 때 이전 저장값 전달을 검사한다.

학생은 `git clone --branch v2.0.0 https://github.com/Glaysia/fpga-lab-template.git lab2_legacy_03_register`으로 빈 프로젝트를 만들고 직접 작성한다. `LAB1.code-workspace`를 열어 추천 확장과 01/02/03 작업을 사용한다.

Vivado 설계 top: `lab2_register`. FPGA: `xc7s75fgga484-1`. 주 클록: 1 kHz. 실습 파일에는 원본과 달리 버튼 입력 동기화·디바운스가 포함된다.

SW1..4(sw[7:4]): 데이터. SW8(sw[0]): load, SW7(sw[1]): transfer 허용. 버튼으로 실행. LED[7:4]=stored, LED[3:0]=value.

시뮬레이션은 `python tools/lab1.py simulate`. 원본 TB는 자동 PASS나 종료가 없을 수 있으므로 `original/`을 자동 컴파일 목록에 추가하지 않는다. 원본 GUI 화면에 나온 파일명·핀·클록 조건은 현재 프로젝트의 `board.json`·XDC·포트 표와 대조한다.

[원본 파일 해시와 차이](evidence/legacy-provenance.json). 실제 실행 결과는 별도 standalone 검증 기록으로 확인한다.
