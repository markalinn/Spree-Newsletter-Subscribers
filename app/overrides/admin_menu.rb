Deface::Override.new(:virtual_path => "spree/layouts/admin", 
                     :name => "newsletter_subscriber_tab", 
                     :insert_bottom => "[data-hook='admin_tabs']", 
                     :partial => "spree/admin/shared/newsletter_subscriber_tab")

