뮤텍스와 세마포어란?
  -> 공유자원에 스레드, 프로세스가 동시에 몰리는것을 방지하는 동기화 도구입니다.
  -> 병렬 프로그래밍을 할때 사용됨  

뮤텍스와 세마포어의 차이는?
  -> 뮤텍스는 한 스레드와 프로세스가 가질수있는 키를 기반으로 관리함.
    세마포어는 현재 공유자원에 접근할수있는 스레드와 프로세스의 수를 기반으로 관리함.
-> 세마포어는 뮤텍스가 될수있지만, 반대는 불가

(뮤텍스와 세마포어) 생길수 있는 문제는?
    -> 쓰더라도, 데드락이 발생할수 있음.

데드락(교착상태)이란?
      -서로 다른 프로세스(or스레드)가 서로 점유하고 있는 자원의 반납을 대기하고 있는 상태가 지속되는것.
/* 심화(꼬리질문)
발생조건

상호 배제: 한 번에 한 프로세스만 해당 자원을 사용할 수 있어야 합니다.
점유 대기: 할당된 자원을 가진 상태에서 다른 자원을 기다립니다.
비선점: 다른 프로세스가 자원의 사용을 끝낼 때 까지 자원을 뺏을 수 없습니다.
순환대기: 각 프로세스가 순환적으로 다음 프로세스가 요구하는 자원을 가지고 있습니다.
해결방법

예방: 4가지 조건 중 하나라도 만족되지 않도록 합니다.
회피: 알고리즘을 데드락이 발생하지 않도록 합니다.
회복: 교착상태가 발생할 때, 해결합니다.
무시: 회복과정의 성능저하가 심하다면 그냥 무시합니다.
*/

기아상태란?
 -> 여러 프로세스가 부족한 자원을 점유하기 위해 경쟁할 때, 특정 프로세스가 영원히 자원 할당이 되지 않는 경우
//꼬리질문
해결법은? -> 우선순위를 변경합니다.(우선순위를 수시로 변경하거나, 오래 기다린 프로세스의 우선순위를 높여주거나, Queue를 사용합니다.)

