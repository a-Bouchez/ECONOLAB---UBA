model FirmasAgricultura
  extends FirmasGoodsOrServices(
        delta = 0.7 , 
        //theta = 0.3,   // Comentar esto para shock de MarkUp
        OmegaT = 0.15   
   );

end FirmasAgricultura;
