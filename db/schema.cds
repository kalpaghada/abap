namespace my.capex;

entity InvestmentRequest {
  key ID          : UUID;
      title       : String(100);
      amount      : Decimal(10,2);
      requestDate : Date;
      status      : String(20);
      createdBy   : String;
}
