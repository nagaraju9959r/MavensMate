//Generated by wsdl2apex

public class ProductGroupSync {
    public class syncProductGroupRequest {
        public ProductGroupSync.auth auth;
        public String action;
        public ProductGroupSync.productGroup product_group;
        private String[] auth_type_info = new String[]{'auth','https://services.haygrouppaynet.com','auth','1','1','false'};
        private String[] action_type_info = new String[]{'action','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] product_group_type_info = new String[]{'product_group','https://services.haygrouppaynet.com','productGroup','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'auth','action','product_group'};
    }
    public class productGroup {
        public String name;
        public String sf_product_id;
        public String description;
        public String country_id;
        public ProductGroupSync.products_element[] products;
        private String[] name_type_info = new String[]{'name','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] sf_product_id_type_info = new String[]{'sf_product_id','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] description_type_info = new String[]{'description','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] country_id_type_info = new String[]{'country_id','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] products_type_info = new String[]{'products','https://services.haygrouppaynet.com','products_element','1','-1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'name','sf_product_id','description','country_id','products'};
    }
    public class syncProductGroupResponseType {
        public ProductGroupSync.syncProductGroupResponse syncProductGroupResponse;
        private String[] syncProductGroupResponse_type_info = new String[]{'syncProductGroupResponse','https://services.haygrouppaynet.com','syncProductGroupResponse','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'syncProductGroupResponse'};
    }
    public class products_element {
        public String product_type_id;
        public String product_id;
        public String sf_product_id;
        private String[] product_type_id_type_info = new String[]{'product_type_id','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] product_id_type_info = new String[]{'product_id','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] sf_product_id_type_info = new String[]{'sf_product_id','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'product_type_id','product_id','sf_product_id'};
    }
    public class HGRISSalesForceIntegration_products_svcPort0 {
        public String endpoint_x = 'https://test.services.haygrouppaynet.com/soap/custom';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'https://services.haygrouppaynet.com', 'ProductGroupSync'};
        public ProductGroupSync.syncProductGroupResponseDetails_element syncProductGroup(ProductGroupSync.auth auth,String action,ProductGroupSync.productGroup product_group) {
            ProductGroupSync.syncProductGroupRequest request_x = new ProductGroupSync.syncProductGroupRequest();
            ProductGroupSync.syncProductGroupResponse response_x;
            request_x.auth = auth;
            request_x.action = action;
            request_x.product_group = product_group;
            Map<String, ProductGroupSync.syncProductGroupResponse> response_map_x = new Map<String, ProductGroupSync.syncProductGroupResponse>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'https://services.haygrouppaynet.com',
              'syncProductGroup',
              'https://services.haygrouppaynet.com',
              'syncProductGroupResponse',
              'ProductGroupSync.syncProductGroupResponse'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.syncProductGroupResponseDetails;
        }
    }
    public class syncProductGroupResponseDetails_element {
        public String resultFlag;
        private String[] resultFlag_type_info = new String[]{'resultFlag','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'resultFlag'};
    }
    public class syncProductGroupRequestType {
        public ProductGroupSync.syncProductGroupRequest syncProductGroup;
        private String[] syncProductGroup_type_info = new String[]{'syncProductGroup','https://services.haygrouppaynet.com','syncProductGroupRequest','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'syncProductGroup'};
    }
    public class auth {
        public String username;
        public String password;
        private String[] username_type_info = new String[]{'username','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] password_type_info = new String[]{'password','http://www.w3.org/2001/XMLSchema','string','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'username','password'};
    }
    public class syncProductGroupResponse {
        public ProductGroupSync.syncProductGroupResponseDetails_element syncProductGroupResponseDetails;
        private String[] syncProductGroupResponseDetails_type_info = new String[]{'syncProductGroupResponseDetails','https://services.haygrouppaynet.com','syncProductGroupResponseDetails_element','1','1','false'};
        private String[] apex_schema_type_info = new String[]{'https://services.haygrouppaynet.com','false','false'};
        private String[] field_order_type_info = new String[]{'syncProductGroupResponseDetails'};
    }
}