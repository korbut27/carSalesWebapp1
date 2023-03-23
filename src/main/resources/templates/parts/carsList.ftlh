<#list cars as car>
    <div class="card mb-1" style="max-width: 900px">
        <div class="row g-0">
            <div class="col-md-4" style="max-width: 205px">
                <#if car.filename??>
                    <img src="/img/${car.filename}" class="rounded mx-auto d-block p-1" width="205" height="155"/>
                </#if>
            </div>
            <div class="col-md-8 p-0">
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-5">
                            <h5 class="card-title mb-3" style="font-size: 18px">${car.name}</h5>
                        </div>
                        <div class="col-sm-2">
                            <h4>
                                <span class="badge text-bg-success ">${car.price}<span>$</span></span>
                            </h4>
                        </div>
                        <div class="col-sm-2" style="font-size: 17px">${car.year}</div>
                        <div class="col-sm-3" style="font-size: 17px">${car.mileage}<span>км</span></div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5 text-muted">
                            ${car.engine}
                        </div>
                        <div class="col-sm-3 text-muted">
                            ${car.drive}
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5 text-muted">
                            ${car.gearbox}
                        </div>
                        <div class="col-sm-3 text-muted">
                            ${car.color}
                        </div>
                    </div>
                    <p class="card-text text-muted mb-0">${car.body}</p>

                    <p class="card-text">
                        <span class="badge" style="background-color: #c2e4fc; color: #0060fa; font-weight: 450">Безопасная сделка</span>
                        <span class="badge" style="background-color: #c2e4fc; color: #0060fa; font-weight: 450">Отчет Carsales</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
</#list>