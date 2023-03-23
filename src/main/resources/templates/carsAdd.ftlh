<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="container mt-5">
        <form method="post" enctype="multipart/form-data">

            <div>
                <h5>Создание объявления</h5>
                <p>
                    Заполняя информацию об авто используйте только актуальную и
                    правдивую информацию.
                </p>
            </div>


            <div class="mb-3">
                <label for="formFile" class="form-label">Добавить фото</label>
                <input class="form-control" type="file" name="file" oninput="pic.src=window.URL.createObjectURL(this.files[0])">
                <img class="mt-3" id="pic"/>
            </div>

            <div class="mb-3">
                <label class="form-label">Марка</label><br/>
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"
                            name="brand"
                            value="BMW"
                            checked
                    />
                    <label class="form-check-label" for="inlineRadio1">BMW<img src="/img/bmw-logo.svg" width="25"
                                                                               height="25"></label>
                </div>
                <div class="form-check form-check-inline">
                    <input
                            class="form-check-input"
                            type="radio"
                            name="brand"
                            value="MERCEDES"
                    />
                    <label class="form-check-label" for="inlineRadio2">MERCEDES<img src="/img/mercedes-benz.svg"
                                                                                    width="25" height="25"></label>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Название</label>
                <div class="input-group">
                    <input type="text" class="form-control ${(textError??)?string('is-invalid', '')}" name="name"/>
                    <#if nameError??>
                        <div class="invalid-feedback">
                            ${nameError}
                        </div>
                    </#if>
                </div>
            </div>

            <div class="mb-3">
                <label for="customRange3" class="form-label">Год выпуска</label>
                <input
                        type="range"
                        class="form-range"
                        name="year"
                        min="2010"
                        max="2023"
                        step="1"
                        oninput="this.nextElementSibling.value = this.value"
                />
                <output>2015</output>
            </div>

            <div class="mb-3">
                <label class="form-label">Пробег</label>
                <div class="input-group">
                    <input type="text" class="form-control ${(mileageError??)?string('is-invalid', '')}"
                           name="mileage"/>
                    <#if mileageError??>
                        <div class="invalid-feedback">
                            ${mileageError}
                        </div>
                    </#if>
                    <span class="input-group-text">км.</span>
                </div>
            </div>

            <div class="input-group mb-3">
                <label class="input-group-text" for="inputGroupSelect01"
                >Состояние</label
                >
                <select class="form-select" name="condition">
                    <option value="new" selected>Выбрать...</option>
                    <option value="new">Новый</option>
                    <option value="no repair">Ремонта не требует</option>
                    <option value="need repair">Требует ремонта</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Стоимость</label>
                <div class="input-group">
                    <input type="text" class="form-control ${(priceError??)?string('is-invalid', '')}" name="price"/>
                    <#if priceError??>
                        <div class="invalid-feedback">
                            ${priceError}
                        </div>
                    </#if>
                    <span class="input-group-text">$</span>
                </div>
            </div>

            <p>
                <a
                        class="btn btn-primary"
                        data-bs-toggle="collapse"
                        href="#collapseExample"
                        role="button"
                        aria-expanded="false"
                        aria-controls="collapseExample"
                >
                    Техн. характеристики
                </a>
            </p>
            <div class="collapse" id="collapseExample">
                <div class="mb-3">
                    <label class="form-label">Кузов</label><br/>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="sedan"
                                checked
                        />
                        <label class="form-check-label" for="inlineRadio1">Седан</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="coupe"
                        />
                        <label class="form-check-label" for="inlineRadio2">Купе</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="wagon"
                        />
                        <label class="form-check-label" for="inlineRadio3">Универсал</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="hatchback"
                        />
                        <label class="form-check-label" for="inlineRadio4">Хэтчбэк</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="minivan"
                        />
                        <label class="form-check-label" for="inlineRadio5">Минивэн</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input
                                class="form-check-input"
                                type="radio"
                                name="body"
                                value="convertible"
                        />
                        <label class="form-check-label" for="inlineRadio6">Кабриолет</label>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Цвет</label>
                    <input type="text" class="form-control ${(colorError??)?string('is-invalid', '')}" name="color"/>
                    <#if colorError??>
                        <div class="invalid-feedback">
                            ${colorError}
                        </div>
                    </#if>
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Двигатель</label>
                    <input type="text" class="form-control ${(engineError??)?string('is-invalid', '')}" name="engine"/>
                    <#if engineError??>
                        <div class="invalid-feedback">
                            ${engineError}
                        </div>
                    </#if>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label"
                    >Комплектация</label
                    >
                    <input type="text" class="form-control ${(equipmentError??)?string('is-invalid', '')}"
                           name="equipment"/>
                    <#if equipmentError??>
                        <div class="invalid-feedback">
                            ${equipmentError}
                        </div>
                    </#if>
                </div>
                <div class="input-group mb-3">
                    <label class="input-group-text" for="inputGroupSelect01"
                    >Коробка передач</label
                    >
                    <select class="form-select" name="gearbox">
                        <option value="automatic" selected>Выбрать...</option>
                        <option value="automatic">АКП</option>
                        <option value="mechanical">МКП</option>
                        <option value="robot">Роботизированная</option>
                    </select>
                </div>
                <div class="input-group mb-3">
                    <label class="input-group-text" for="inputGroupSelect01"
                    >Привод</label
                    >
                    <select class="form-select" name="drive">
                        <option value="fwd" selected>Выбрать...</option>
                        <option value="fwd">Передний</option>
                        <option value="rwd">Задний</option>
                        <option value="awd">Полный</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label"
                    >VIN</label
                    >
                    <input type="text" class="form-control ${(vinError??)?string('is-invalid', '')}" name="vin"/>
                    <#if vinError??>
                        <div class="invalid-feedback">
                            ${vinError}
                        </div>
                    </#if>
                </div>
            </div>

            <div class="mb-3">
                <div class="form-floating">
            <textarea
                    class="form-control ${(descriptionError??)?string('is-invalid', '')}"
                    placeholder="Leave a comment here"
                    name="description"
                    style="height: 100px"
            ></textarea>
                    <label for="floatingTextarea2">Описание</label>
                    <#if descriptionError??>
                        <div class="invalid-feedback">
                            ${descriptionError}
                        </div>
                    </#if>
                </div>
            </div>


            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Подать объявление</button>
            </div>
        </form>
    </div>
</@c.page>