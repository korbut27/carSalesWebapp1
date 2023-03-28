<form method="get" action="/cars" name="form">
    <input type="hidden" value="filter" name="filter">
    <h6>Настройте фильтр</h6>
    <p class="mb-0">Марка</p>
    <div class="row mb-2">
        <div class="col">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="brand1"
                       value="BMW"
                <#if brands??>
                    ${brands?seq_contains("BMW")?string("checked", "")}
                </#if>
                />
                <label class="form-check-label" for="flexCheckDefault">
                    <img src="/img/bmw-logo.svg" width="25" height="25">
                </label>
            </div>
        </div>
        <div class="col">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="brand2"
                       value="MERCEDES"
                        <#if brands??>
                            ${brands?seq_contains("MERCEDES")?string("checked", "")}
                        </#if>
                />
                <label class="form-check-label" for="flexCheckChecked">
                    <img src="/img/mercedes-benz.svg" width="25" height="25">
                </label>
            </div>
        </div>
        <div class="col">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="brand3"
                       value="AUDI"
                        <#if brands??>
                            ${brands?seq_contains("AUDI")?string("checked", "")}
                        </#if>
                />
                <label class="form-check-label" for="flexCheckChecked">
                    <img src="/img/audi.png" width="25" height="25">
                </label>
            </div>
        </div>
        <div class="col">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" name="brand4"
                       value="PORSCHE"
                        <#if brands??>
                            ${brands?seq_contains("PORSCHE")?string("checked", "")}
                        </#if>
                />
                <label class="form-check-label" for="flexCheckChecked">
                    <img src="/img/porsche.png" width="25" height="25">
                </label>
            </div>
        </div>
    </div>

    <p class="mb-0">Год выпуска</p>
    <div class="row mb-2">
        <div class="col">
            <div class="input-group">
                <span class="input-group-text">от</span>
                <select class="form-select" aria-label="Default select example" name="startYear">
                    <#if startYear??>
                        <option value="${startYear}" selected>${startYear}</option>
                    <#else>
                        <option value="2015" selected>2015</option>
                    </#if>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2022">2023</option>
                </select>
            </div>
        </div>
        <div class="col">
            <div class="input-group">
                <span class="input-group-text">до</span>
                <select class="form-select" aria-label="Default select example" name="endYear">
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                    <option value="2019">2019</option>
                    <option value="2020">2020</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <#if startYear??>
                        <option value="${endYear}" selected>${endYear}</option>
                    <#else>
                        <option value="2023" selected>2023</option>
                    </#if>
                </select>
            </div>
        </div>
    </div>



    <div class="mb-3">
        <label class="form-label">Кузов</label><br/>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body1"
                    value="sedan"
                    <#if body??>
                        ${body?seq_contains("sedan")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio1">Седан</label>
        </div>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body2"
                    value="coupe"
                    <#if body??>
                        ${body?seq_contains("coupe")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio2">Купе</label>
        </div>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body3"
                    value="wagon"
                    <#if body??>
                        ${body?seq_contains("wagon")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio3">Универсал</label>
        </div>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body4"
                    value="hatchback"
                    <#if body??>
                        ${body?seq_contains("hatchback")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio4">Хэтчбэк</label>
        </div>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body5"
                    value="minivan"
                    <#if body??>
                        ${body?seq_contains("minivan")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio5">Минивэн</label>
        </div>
        <div class="form-check form-check-inline">
            <input
                    class="form-check-input"
                    type="checkbox"
                    name="body6"
                    value="convertible"
                    <#if body??>
                        ${body?seq_contains("convertible")?string("checked", "")}
                    </#if>
            />
            <label class="form-check-label" for="inlineRadio6">Кабриолет</label>
        </div>
    </div>

    <div class="form-floating mb-2">
        <select class="form-select" id="floatingSelect" aria-label="Floating label select example" name="condition">
            <option
                    value="new"
                    <#if condition??>
                        ${condition?contains("new")?string("selected", "")}
                    <#else>
                        selected
                    </#if>
            >
                Новый
            </option>
            <option
                    value="no repair"
                    <#if condition??>
                        ${condition?contains("no repair")?string("selected", "")}
                    </#if>
            >
                Ремонта не требует
            </option>
            <option
                    value="need repair"
                    <#if condition??>
                        ${condition?contains("need repair")?string("selected", "")}
                    </#if>
            >
                Требует ремонта
            </option>
        </select>
        <label for="floatingSelect">Состояние</label>
    </div>

    <p class="mb-0">Стоимость</p>
    <div class="row mb-2">
        <div class="col">
            <div class="input-group">
                <span class="input-group-text">от</span>
                <input
                        type="text"
                        class="form-control"
                        <#if minPrice??>
                            value="${minPrice}"
                            <#else> value="1"
                        </#if>
                        name="minPrice"/>
            </div>
        </div>
        <div class="col">
            <div class="input-group">
                <span class="input-group-text">до</span>
                <input
                        type="text"
                        class="form-control"
                        <#if maxPrice??>
                            value="${maxPrice}"
                            <#else> value="1000000"
                        </#if>
                        name="maxPrice"/>
            </div>
        </div>
    </div>


    <a href="/cars">Сбросить фильтр</a>
    <button type="submit" class="btn btn-primary float-end">Применить</button>
</form>