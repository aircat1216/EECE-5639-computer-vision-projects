function h=find_homography_matrix(p1,p2)
  B=[p2(1,1);p2(1,2);p2(2,1);p2(2,2);p2(3,1);p2(3,2);p2(4,1);p2(4,2)];
  A = [p1(1,1),p1(1,2),1,0,0,0,-p1(1,1).*p2(1,1),-p1(1,2).*p2(1,1);

        0,0,0,p1(1,1),p1(1,2),1,-p1(1,1).*p2(1,2),-p1(1,2).*p2(1,2);

        p1(1,1),p1(1,2),1,0,0,0,-p1(2,1).*p2(2,1),-p1(2,2).*p2(2,1);

        0,0,0,p1(2,1),p1(2,2),1,-p1(2,1).*p2(2,2),-p1(2,2).*p2(2,2);

        p1(3,1),p1(3,2),1,0,0,0,-p1(3,1).*p2(3,1),-p1(3,2).*p2(3,1);

        0,0,0,p1(3,1),p1(3,2),1,-p1(3,1).*p2(3,2),-p1(3,2).*p2(3,2);
        
        p1(4,1),p1(4,2),1,0,0,0,-p1(4,1).*p2(4,1),-p1(4,2).*p2(4,1);

        0,0,0,p1(4,1),p1(4,2),1,-p1(4,1).*p2(4,2),-p1(4,2).*p2(4,2)];
    Q=A\B;
    h=[Q(1),Q(2),Q(3);Q(4),Q(5),Q(6);Q(7),Q(8),1];
end