##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "phpMyRealty" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-08-19
version "0.1"
description "phpMyRealty - customizable real estate web application - Requires: PHP - Homepage: http://www.phpmyrealty.com/"

# Google results as at 2011-08-19 #
# 374 for intext:Sort By: Submission Date | Bedrooms | Bathrooms |  Price (ASC) | Price (DESC)
# 241 for "Powered by phpMyRealty Professional"

# Dorks #
dorks [
'"Powered by phpMyRealty Professional"'
]

# Examples #
examples %w|
www.phpmyrealty.com/demo/
www.phpmyrealty.com/demo/admin/
www.controlhome.net/pmr/
realtyworksct.com/schools.php
www.houses-of-nigeria.com
www.gpvn.net
www.realestatebuyerservices.com
|

# Matches #
matches [

# HTML Comment
{ :text=>'<!-- Main Content table : stop -->' },

# Powered by text
{ :text=>'Powered by <a href="http://www.phpmyrealty.com" target="_blank" style="font-size: 12px; font-family: arial">phpMyRealty Professional</a>' },

# Admin page
{ :text=>'<span class="table_header_text"> &nbsp;Administrator Control Panel</span>' },

]

end


