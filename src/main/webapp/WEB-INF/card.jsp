<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>

<div class="row">
	<div class="col-sm-12 col-md-6 col-lg-6 ">
		<div class="card text-dark card-has-bg click-col ">
			<img class="card-img" src="images/jap-bg.jpeg" 
			alt="omikuji" style="filter: blur(.3rem);">
			<div class="card-img-overlay d-flex flex-column">
				<div class="card-body">
					<p class="" style="font-size: 1.3rem; font-weight: 600;">
						In <c:out value="${number}"/> years, you will
						live in <c:out value="${city}"/> with <c:out value="${person}"/> 
						as your room-mate. You will be <c:out value="${activity}"/> for a living. The
						next time you see a <c:out value="${being}"/>, you will have good
						luck. Also, <c:out value="${niceWords}"/>.
					</p>
					<small><i class="far fa-clock"></i> <c:out value="${dateString}"></c:out></small>
				</div>
			</div>
		</div>
	</div>
</div>
</html>

