using my.capex as capex from '../db/schema';

service InvestmentService {
  @Capabilities.InsertRestrictions.Insertable: true
  @Capabilities.UpdateRestrictions.Updatable: true
  @Capabilities.DeleteRestrictions.Deletable: true
  entity InvestmentRequests as projection on capex.InvestmentRequest;
}
