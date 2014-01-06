function test
format short
%% stage 1
G = [ %20x20
50.61983 50.6161166 50.3840641 50.3803508 0.409978717 0.374347278 -0.409978717 -0.374347278 0.409964612 0.374333173 -0.409964612 -0.374333173 0.409923961 0.374402035 -0.409923961 -0.374402035 0.409909856 0.374387929 -0.409909856 -0.374387929 ;
50.6161166 50.6198299 50.3803508 50.3840641 0.374336416 0.409961377 -0.374336416 -0.409961377 0.374350517 0.409975479 -0.374350517 -0.409975479 0.37439116 0.409906633 -0.37439116 -0.409906633 0.374405261 0.409920735 -0.374405261 -0.409920735 ;
50.3840641 50.3803508 50.2635538 50.2598404 1.17123664 1.13560523 -1.17123664 -1.13560523 1.17122253 1.13559112 -1.17122253 -1.13559112 1.17118188 1.13565999 -1.17118188 -1.13565999 1.17116778 1.13564588 -1.17116778 -1.13564588 ;
50.3803508 50.3840641 50.2598404 50.2635537 1.13559434 1.17121933 -1.13559434 -1.17121933 1.13560844 1.17123343 -1.13560844 -1.17123343 1.13564908 1.17116458 -1.13564908 -1.17116458 1.13566318 1.17117869 -1.13566318 -1.17117869 ;
0.409978717 0.374336416 1.17123664 1.13559434 198.707242 142.970353 -198.707242 -142.970353 198.672502 142.935613 -198.672502 -142.935613 198.572379 143.105215 -198.572379 -143.105215 198.537639 143.070475 -198.537639 -143.070475 ;
0.374347278 0.409961377 1.13560523 1.17121933 142.970353 198.641488 -142.970353 -198.641488 143.001374 198.67251 -143.001374 -198.67251 143.09078 198.521061 -143.09078 -198.521061 143.121802 198.552083 -143.121802 -198.552083 ;
-0.409978717 -0.374336416 -1.17123664 -1.13559434 -198.707242 -142.970353 198.707242 142.970353 -198.672502 -142.935613 198.672502 142.935613 -198.572379 -143.105215 198.572379 143.105215 -198.537639 -143.070475 198.537639 143.070475 ;
-0.374347278 -0.409961377 -1.13560523 -1.17121933 -142.970353 -198.641488 142.970353 198.641488 -143.001374 -198.67251 143.001374 198.67251 -143.09078 -198.521061 143.09078 198.521061 -143.121802 -198.552083 143.121802 198.552083 ;
0.409964612 0.374350517 1.17122253 1.13560844 198.672502 143.001374 -198.672502 -143.001374 198.64148 142.970353 -198.64148 -142.970353 198.552074 143.121802 -198.552074 -143.121802 198.521052 143.09078 -198.521052 -143.09078 ;
0.374333173 0.409975479 1.13559112 1.17123343 142.935613 198.67251 -142.935613 -198.67251 142.970353 198.70725 -142.970353 -198.70725 143.070475 198.537648 -143.070475 -198.537648 143.105215 198.572388 -143.105215 -198.572388 ;
-0.409964612 -0.374350517 -1.17122253 -1.13560844 -198.672502 -143.001374 198.672502 143.001374 -198.64148 -142.970353 198.64148 142.970353 -198.552074 -143.121802 198.552074 143.121802 -198.521052 -143.09078 198.521052 143.09078 ;
-0.374333173 -0.409975479 -1.13559112 -1.17123343 -142.935613 -198.67251 142.935613 198.67251 -142.970353 -198.70725 142.970353 198.70725 -143.070475 -198.537648 143.070475 198.537648 -143.105215 -198.572388 143.105215 198.572388 ;
0.409923961 0.37439116 1.17118188 1.13564908 198.572379 143.09078 -198.572379 -143.09078 198.552074 143.070475 -198.552074 -143.070475 198.493553 143.169606 -198.493553 -143.169606 198.473248 143.149301 -198.473248 -143.149301 ;
0.374402035 0.409906633 1.13565999 1.17116458 143.105215 198.521061 -143.105215 -198.521061 143.121802 198.537648 -143.121802 -198.537648 143.169606 198.45667 -143.169606 -198.45667 143.186193 198.473257 -143.186193 -198.473257 ;
-0.409923961 -0.37439116 -1.17118188 -1.13564908 -198.572379 -143.09078 198.572379 143.09078 -198.552074 -143.070475 198.552074 143.070475 -198.493553 -143.169606 198.493553 143.169606 -198.473248 -143.149301 198.473248 143.149301 ;
-0.374402035 -0.409906633 -1.13565999 -1.17116458 -143.105215 -198.521061 143.105215 198.521061 -143.121802 -198.537648 143.121802 198.537648 -143.169606 -198.45667 143.169606 198.45667 -143.186193 -198.473257 143.186193 198.473257 ;
0.409909856 0.374405261 1.17116778 1.13566318 198.537639 143.121802 -198.537639 -143.121802 198.521052 143.105215 -198.521052 -143.105215 198.473248 143.186193 -198.473248 -143.186193 198.456661 143.169606 -198.456661 -143.169606 ;
0.374387929 0.409920735 1.13564588 1.17117869 143.070475 198.552083 -143.070475 -198.552083 143.09078 198.572388 -143.09078 -198.572388 143.149301 198.473257 -143.149301 -198.473257 143.169606 198.493562 -143.169606 -198.493562 ;
-0.409909856 -0.374405261 -1.17116778 -1.13566318 -198.537639 -143.121802 198.537639 143.121802 -198.521052 -143.105215 198.521052 143.105215 -198.473248 -143.186193 198.473248 143.186193 -198.456661 -143.169606 198.456661 143.169606 ;
-0.374387929 -0.409920735 -1.13564588 -1.17117869 -143.070475 -198.552083 143.070475 198.552083 -143.09078 -198.572388 143.09078 198.572388 -143.149301 -198.473257 143.149301 198.473257 -143.169606 -198.493562 143.169606 198.493562 ];

c = [ %20
-6.04732842 -6.04730857 -6.02847333 -6.02845348 -0.0963111408 -0.10124493 0.0963111408 0.10124493 -0.0963134109 -0.1012472 0.0963134109 0.1012472 -0.0963199533 -0.101236117 0.0963199533 0.101236117 -0.0963222234 -0.101238387 0.0963222234 0.101238387 ]';

A = [ %8x20
50.61983 50.6161166 50.3840641 50.3803508 0.409978717 0.374347278 -0.409978717 -0.374347278 0.409964612 0.374333173 -0.409964612 -0.374333173 0.409923961 0.374402035 -0.409923961 -0.374402035 0.409909856 0.374387929 -0.409909856 -0.374387929 ;
50.6161166 50.6198299 50.3803508 50.3840641 0.374336416 0.409961377 -0.374336416 -0.409961377 0.374350517 0.409975479 -0.374350517 -0.409975479 0.37439116 0.409906633 -0.37439116 -0.409906633 0.374405261 0.409920735 -0.374405261 -0.409920735 ;
50.3840641 50.3803508 50.2635538 50.2598404 1.17123664 1.13560523 -1.17123664 -1.13560523 1.17122253 1.13559112 -1.17122253 -1.13559112 1.17118188 1.13565999 -1.17118188 -1.13565999 1.17116778 1.13564588 -1.17116778 -1.13564588 ;
50.3803508 50.3840641 50.2598404 50.2635537 1.13559434 1.17121933 -1.13559434 -1.17121933 1.13560844 1.17123343 -1.13560844 -1.17123343 1.13564908 1.17116458 -1.13564908 -1.17116458 1.13566318 1.17117869 -1.13566318 -1.17117869 ;
0.0707106781 0 0 0 -1 -1 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 ;
0 0.0707106781 0 0 0 0 0 0 -1 -1 -1 -1 0 0 0 0 0 0 0 0 ;
0 0 0.0707106781 0 0 0 0 0 0 0 0 0 -1 -1 -1 -1 0 0 0 0 ;
0 0 0 0.0707106781 0 0 0 0 0 0 0 0 0 0 0 0 -1 -1 -1 -1 ];

b = [ %8
6.04838914 6.04844537 6.02732394 6.02735805 0 0 0 0 ]';

%% stage 2
format long E
svd(G)
% format short


z1 = solve_qp(G,c,-A,-b)

% w = solve_qp(G,c,-A,-b)
% z2 = P*w
% z = z1 + z2
end

function x = solve_qp(G,c,A,b)
%     linprog(ones(size(A,2),1),A,b,[],[],zeros(size(A,2),1))
    exitflag = -1;
    options = optimoptions(@quadprog,'Algorithm','interior-point-convex');
    i = -11;
    while (exitflag < 0)
        i = i +1
        [x,fval,exitflag,output,lambda] = quadprog(G,c,A,b,zeros(0,size(c,1)),[],zeros(size(A,2),1),[],zeros(size(c)),options);
        G = G+ eye(size(G))*1*10^i;
    end
end