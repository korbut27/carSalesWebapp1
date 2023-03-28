<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container mt-5" style="max-width: 900px">
        <div class="row mb-3">
            <div class="col-sm-9">
                <h2 style="max-width: 650px">
                    ${car.name}
                </h2>
            </div>
            <div class="col">
                <span class="badge rounded-pill text-bg-light float-end" style="font-size: 27px">${car.price}<span>$</span></span>
            </div>
        </div>

        <div class="row shadow-sm p-3 rounded mb-3">
            <div class="col" style="max-width: 50px">
                <img
                        src="https://avatars.mds.yandex.net/get-autoru-users/48059/9b8e5282ff7e3bf245879151d84caa28/100x100"
                        width="45px"
                />
            </div>
            <div class="col">
                <h6 class="mb-0" style="max-width: 300px">${user.username}</h6>
                <p>Минск</p>
            </div>
            <div class="col">
                <div class="phone float-end" style="font-size: 20px">
                    <a href="tel:+74951234567">+7 (495) 123-45-67</a>
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div
                    class="
            col-sm-4
            borderborder-secondary-subtle
            shadow-sm
            p-3
            rounded
            mb-3
          "
                    style="max-height: 500px"
            >
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Статус</div>
                    <div class="col">${car.status}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Год выпуска</div>
                    <div class="col">${car.year}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Пробег</div>
                    <div class="col">${car.mileage}<span>км</span></div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Кузов</div>
                    <div class="col">${car.body}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Цвет</div>
                    <div class="col">${car.color}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Двигатель</div>
                    <div class="col">${car.engine}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Комплектация</div>
                    <div class="col">${car.equipment}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Коробка</div>
                    <div class="col">${car.gearbox}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Привод</div>
                    <div class="col">${car.drive}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">Состояние</div>
                    <div class="col">${car.condition}</div>
                </div>
                <div class="row mb-2">
                    <div class="col-sm-5 text-muted">VIN</div>
                    <div class="col">${car.vin}</div>
                </div>
            </div>

            <div class="col-sm-8">

                <div id="carouselExampleFade" class="carousel slide carousel-fade">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="3" aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleFade" data-bs-slide-to="4" aria-label="Slide 5"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/img/${car.filename?split("|")[0]}" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/${car.filename?split("|")[1]}" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/${car.filename?split("|")[2]}" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/${car.filename?split("|")[3]}" class="d-block w-100">
                        </div>
                        <div class="carousel-item">
                            <img src="/img/${car.filename?split("|")[4]}" class="d-block w-100">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>

            </div>
        </div>
        <div class="mb-3">
            <h5>
                Комментарий продавца
            </h5>
            <p>
                ${car.description}
            </p>
        </div>
        <div class="card" style="top: 100px">
        </div>
    </div>
</@c.page>