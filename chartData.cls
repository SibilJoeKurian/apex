public class chartData {
    @AuraEnabled public Integer key;
    @AuraEnabled public String roleLevel;
    @AuraEnabled public List<singleLightningCardData> singleLevel;
        
    public class singleLightningCardData{
        @AuraEnabled public String Name {get; set;}
        @AuraEnabled public String Email {get; set;}
        @AuraEnabled public Id Id {get;set;}
        @AuraEnabled public String role {get; set;}
        @AuraEnabled public String title {get; set;}    
    }
    public chartData(String roleLevel,Integer key){
        this.singleLevel = new List<singleLightningCardData>();
        this.roleLevel = roleLevel;
        this.key = key;
    }
    public static List<singleLightningCardData> getLightningCard(String roleLevel,List<ChartData> chartDataList){
        for(chartData data: chartDataList){
            if(data?.roleLevel == roleLevel){
                return data.singleLevel;
            }
        }
        return  null;
    }
    
}
