function sortingMethod(){
    var $sortingMethod = $('.sortingMethod');
    for(var i=0; i<arguments.length; i++){
        $sortingMethod.find('option[value="' + arguments[i] + '"]').show();
    }
}

function filterAssigner(){
    var $filter = $("#filter");
    for(var i=0; i<arguments.length; i++){
        $filter.find('#' + arguments[i]).show();
    }
}

function removeAddBtn(){
    $("#addBtn").remove();
}

/**
 * 關鍵字搜尋公用設定方法
 * @param $searchTag 搜尋框jQuery物件
 * @param targetsClassName 比較目標jQuery物件
 * @param outsideClass 目標最外層獨立ClassName
 */
function bindSearchEventWithFilter($searchTag, targetsClassName, outsideClass, callback){
    $searchTag.bind('change', function(){
        findTarget();
    });
    $searchTag.bind('keyup', function(){
        findTarget();
    });
    $searchTag.bind('mousedown', function(){
        findTarget();
    });
    if(typeof callback != 'undefined'){
        callback();
    }

    function findTarget(){
        if(isEmptyString($searchTag.val())){
            $('.' + targetsClassName).each(function(){
                $(this).closest('.' + outsideClass).show();
            });
        }else{
            $('.' + targetsClassName).each(function(){
                var $target = $(this);
                if($target.val().toLocaleLowerCase().indexOf($searchTag.val().toLowerCase()) == -1){
                    $target.closest('.' + outsideClass).hide();
                }else{
                    $target.closest('.' + outsideClass).show();
                }
            });
        }
    }
}

function bindSortingMethod(outsideClassName, wrapperClassName){
    $(".sortingMethod").bind('change', function(){
        sorting();
    });
    $("#sorting_direction").find('label').bind('click', function(){
        sorting($(this));
    });
    function sorting($evtLabel){
        var sortingKey = $('.sortingMethod').val();
        if('none' != sortingKey){
            var sortingDirection = $("#sorting_direction").find('.options:checked').val();
            //裝比較的Key值 的 Array
            var sortingArray = new Array();
            //裝已被排序過的HTML Object的Array
            var $sortedBlocks = new Array();
            //Key值放進Array
            $('.' + sortingKey).each(function(){
                var $this = $(this);
                sortingArray.push($this.val());
            })
            //排序Key值
            if(sortingKey == 'name'){
                sortingArray.sort();
            }else{
                sortingArray.sort(function(a, b) {return a - b;});
            }

            if(typeof $evtLabel != 'undefined'){
                if($evtLabel.find('.options').val() != 'asc'){
                    if(sortingKey == 'name'){
                        sortingArray.reverse();
                    }else{
                        sortingArray.sort(function(a, b) {return b - a;});
                    }
                }
            }else{
                if(sortingDirection != 'asc'){
                    if(sortingKey == 'name'){
                        sortingArray.reverse();
                    }else{
                        sortingArray.sort(function(a, b) {return b - a;});
                    }
                }
            }
            //抽出Key值當作HTML Object的索引 並將Object放入Array
            $.each(sortingArray, function(index, value){
                var $target = $('.' + sortingKey + '[value="' + value + '"]');
                $sortedBlocks.push($target.closest('.' + outsideClassName).clone(true));
                $target.closest('.' + outsideClassName).remove();
            });
            //將排序好的HTML Object一個一個放到葉面上
            $.each($sortedBlocks, function(index, $sortedBlock){
                $('.' + wrapperClassName).append($sortedBlock);
            });
        }
    }
}