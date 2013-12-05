'use strict'

angular.module('christmasrouletteApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.choose = (arr) ->
      return arr[Math.floor(Math.random()*arr.length)]

    $scope.shops = [
      { name: 'Amazon', url: 'http://www.amazon.com/gp/goldbox' }
      { name: 'Storenvy', url: 'http://www.storenvy.com/sales/holiday-sale/' }
      { name: 'Thinkgeek', url: 'http://www.thinkgeek.com/gifts/' }
      { name: 'Walmart', url: 'http://www.walmart.com/?page=trending' }
      { name: 'Ebay', url: 'http://deals.ebay.com/' }
      { name: 'Kohls', url: 'http://www.kohls.com/sale-event/gift-ideas-christmas.jsp?CN=4294715317+4294735582' }
      { name: 'Bestbuy',  url: 'http://www.bestbuy.com/site/Electronics/Gift-Center/abcat0010000.c?id=abcat0010000' }
      { name: 'Target',  url: 'http://www.target.com/c/christmas/-/N-5xt30#?lnk=gnav_christmas_12_0' }
      { name: 'Jcpenney',  url: 'http://www.jcpenney.com/gifts/dept.jump?id=dept20020200034&cmJCP_T=G1&cmJCP_C=D12B' }
      { name: 'Macy', url: 'http://www.macys.com/' }
      { name: 'Sears', url: 'http://www.sears.com/seasonal-christmas/b-1100100' }
      { name: 'Gap', url: 'http://oldnavy.gap.com/' }
      { name: 'Landsend',  url: 'http://www.landsend.com/?gclid=CKGJhJyfmbsCFSVgMgod4wYAqg&cm_mmc=SI_654424458_34523581202_1' }
      { name: 'Kmart', url: 'http://www.kmart.com/' }
    ]


    $scope.link = ($scope.choose($scope.shops))


    $scope.gimmeOne = () ->
      $scope.link = $scope.choose($scope.shops)