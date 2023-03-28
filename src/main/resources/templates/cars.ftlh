<#import "parts/common.ftlh" as c>

<@c.page>
    <a class="btn btn-primary" href="/cars/add" role="button">Подать объявление</a>
    <div class="container mt-5">
        <div class="row">
            <div
                    class="col-sm-3 border border-primary-subtle shadow-sm p-3 rounded mb-3" style="max-height: 500px"
            >
                <#include "parts/filter.ftlh">
            </div>
            <div class="col-sm-8">
                <#include "parts/carsList.ftlh">
            </div>
        </div>
    </div>
</@c.page>