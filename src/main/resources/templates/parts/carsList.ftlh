<#if cars?has_content>
    <#list cars as car>
        <a href="/cars/view/${car.id}" style="text-decoration: none;">
            <div
                    class="border-bottom p-3 zoom"
                    style="max-width: 920px; border-radius: 6px"
            >
                <div class="row g-0">
                    <div class="col-md-4" style="margin-right: 15px; max-width: 205px">

                        <div id="carouselExampleFade${car.id}" class="carousel slide carousel-fade">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img
                                            src="/img/${car.filename?split("|")[0]}"
                                            class="d-block w-100"
                                            style="border-radius: 6px"
                                    />
                                </div>
                                <div class="carousel-item">
                                    <img
                                            src="/img/${car.filename?split("|")[1]}"
                                            class="d-block w-100"
                                            style="border-radius: 6px"
                                    />
                                </div>
                                <div class="carousel-item">
                                    <img
                                            src="/img/${car.filename?split("|")[2]}"
                                            class="d-block w-100"
                                            style="border-radius: 6px"
                                    />
                                </div>
                            </div>
                            <button
                                    class="carousel-control-prev"
                                    type="button"
                                    data-bs-target="#carouselExampleFade${car.id}"
                                    data-bs-slide="prev"
                            >
                <span
                        class="carousel-control-prev-icon"
                        aria-hidden="true"
                ></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button
                                    class="carousel-control-next"
                                    type="button"
                                    data-bs-target="#carouselExampleFade${car.id}"
                                    data-bs-slide="next"
                            >
                <span
                        class="carousel-control-next-icon"
                        aria-hidden="true"
                ></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-8 p-0">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-5">
                                    <h5 class="card-title mb-2" style="font-size: 17px">
                                        ${car.name}
                                    </h5>
                                </div>
                                <div class="col">
                    <span class="badge" style="font-size: 17px; background-color: #36b555"
                    >${car.price}<span>$</span></span
                    >
                                </div>
                                <div class="col" style="font-size: 17px; margin-right: -45px;">2022</div>
                                <div class="col" style="font-size: 17px">
                                    ${car.mileage}<span>км</span>
                                </div>
                            </div>

                            <div class="row" style="margin-bottom: -5px; font-size: 15px">
                                <div class="col-sm-5 text-muted" style="">${car.engine}</div>
                                <div class="col-sm-3 text-muted">${car.drive}</div>
                            </div>

                            <div class="row" style="margin-bottom: -5px; font-size: 15px">
                                <div class="col-sm-5 text-muted">${car.gearbox}</div>
                                <div class="col-sm-3 text-muted">${car.color}</div>
                            </div>
                            <p class="card-text text-muted mb-2" style="font-size: 15px">${car.body}</p>

                            <p class="card-text">
                <span
                        class="badge"
                        style="
                    background-color: #c2e4fc;
                    color: #0060fa;
                    font-weight: 450;
                  "
                >Безопасная сделка</span
                >
                                <span
                                        class="badge"
                                        style="
                    background-color: #c2e4fc;
                    color: #0060fa;
                    font-weight: 450;
                  "
                                >Отчет Carsales</span
                                >
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </a>
    </#list>
<#else>
    <div class="alert alert-info" role="alert">
        Упс.. Ничего не найдено(
    </div>
</#if>
